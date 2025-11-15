$execute unless data block $(pos) Items[$(slot1)] run return fail
$execute unless data block $(pos) Items[$(slot2)] run return fail
$execute unless data entity $(entity) Offers.Recipes[$(recipe)] run say no $(recipe) found
$execute unless data entity $(entity) Offers.Recipes[$(recipe)] run function lt:utility/shops/add {"entity": $(entity), "cost": 1}
$data modify entity $(entity) Offers.Recipes[$(recipe)].buy set from block $(pos) Items[$(slot1)]
$data modify entity $(entity) Offers.Recipes[$(recipe)].sell set from block $(pos) Items[$(slot2)]
