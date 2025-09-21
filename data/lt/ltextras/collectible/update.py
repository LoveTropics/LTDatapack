import os
import json

def fix_components(data):
    changed = False

    # Fix minecraft:lore
    if "components" in data and "minecraft:lore" in data["components"]:
        lore = data["components"]["minecraft:lore"]
        if isinstance(lore, list):
            new_lore = []
            for entry in lore:
                if isinstance(entry, str):
                    try:
                        parsed = json.loads(entry)
                        new_lore.append(parsed)
                        changed = True
                    except json.JSONDecodeError:
                        new_lore.append(entry)
                else:
                    new_lore.append(entry)
            data["components"]["minecraft:lore"] = new_lore

    # Fix minecraft:custom_name
    if "components" in data and "minecraft:custom_name" in data["components"]:
        cname = data["components"]["minecraft:custom_name"]
        if isinstance(cname, str):
            try:
                parsed = json.loads(cname)
                if isinstance(parsed, list) and len(parsed) == 1:
                    parsed = parsed[0]  # unwrap single-element array
                data["components"]["minecraft:custom_name"] = parsed
                changed = True
            except json.JSONDecodeError:
                pass

    # Fix minecraft:attribute_modifiers
    if "components" in data and "minecraft:attribute_modifiers" in data["components"]:
        attr = data["components"]["minecraft:attribute_modifiers"]
        if isinstance(attr, dict) and "modifiers" in attr and isinstance(attr["modifiers"], list):
            data["components"]["minecraft:attribute_modifiers"] = attr["modifiers"]
            changed = True

    return data, changed


def process_file(filepath):
    try:
        with open(filepath, "r", encoding="utf-8") as f:
            data = json.load(f)
    except Exception:
        return False

    new_data, changed = fix_components(data)

    if changed:
        with open(filepath, "w", encoding="utf-8") as f:
            json.dump(new_data, f, indent=2, ensure_ascii=False)
        print(f"Fixed: {filepath}")
    return changed


def process_folder(folder):
    for root, _, files in os.walk(folder):
        for file in files:
            if file.endswith(".json"):
                filepath = os.path.join(root, file)
                process_file(filepath)


if __name__ == "__main__":
    folder = "./"  # change this to your target folder
    process_folder(folder)
