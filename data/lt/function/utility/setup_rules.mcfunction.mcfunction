# Tropics
protect rule set tropics attack deny
protect rule set tropics break deny
protect rule set tropics damage deny
protect rule set tropics explosion deny
protect rule set tropics hunger deny
protect rule set tropics modify deny
protect rule set tropics player_damage deny
protect rule set tropics portals deny
protect rule set tropics fall_damage deny

# Build Area
protect add region_build 10
protect behavior add region_build lt:build/area
protect exclusion remove operators region_build
protect rule set region_build break allow
protect rule set region_build place allow 
