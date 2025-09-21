import os
import json

# Keys we want to process
TARGET_KEYS = {"lore", "ltminigames:shift_lore"}

def process_lore_lists(obj):
    """
    Recursively process JSON objects:
    - Only act on keys in TARGET_KEYS
    - Single-string lists → unwrap to string
    - Multi-string lists → parse each string as JSON object
    Returns True if any change was made.
    """
    changed = False

    if isinstance(obj, dict):
        for key, value in obj.items():
            if key in TARGET_KEYS and isinstance(value, list) and all(isinstance(i, str) for i in value):
                if len(value) == 1:
                    obj[key] = value[0]
                    changed = True
                elif len(value) > 1:
                    new_list = []
                    for s in value:
                        try:
                            new_list.append(json.loads(s))
                        except json.JSONDecodeError:
                            # Keep as string if invalid JSON
                            new_list.append(s)
                    obj[key] = new_list
                    changed = True
            else:
                changed |= process_lore_lists(value)

    elif isinstance(obj, list):
        for i, item in enumerate(obj):
            changed |= process_lore_lists(item)

    return changed

def process_file(filepath):
    try:
        with open(filepath, "r", encoding="utf-8") as f:
            original_text = f.read()
            data = json.loads(original_text)

        if process_lore_lists(data):
            with open(filepath, "w", encoding="utf-8") as f:
                json.dump(data, f, indent=2, ensure_ascii=False)
            print(f"Updated: {filepath}")
        else:
            print(f"No change: {filepath}")

    except Exception as e:
        print(f"Error processing {filepath}: {e}")

def scan_folder(root_folder):
    for dirpath, _, filenames in os.walk(root_folder):
        for filename in filenames:
            if filename.endswith(".json"):
                process_file(os.path.join(dirpath, filename))

if __name__ == "__main__":
    scan_folder(".")  # replace "." with your folder path
