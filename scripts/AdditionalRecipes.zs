import crafttweaker.api.tag.MCTag;

<tag:items:crafttweaker:arrow_tips>.add(<tag:items:forge:nuggets/iron>);
<tag:items:crafttweaker:arrow_tips>.add(<tag:items:forge:nuggets/lead>);
<tag:items:crafttweaker:arrow_tips>.add(<tag:items:forge:nuggets/nickel>);
<tag:items:crafttweaker:arrow_tips>.add(<tag:items:forge:nuggets/silver>);
<tag:items:crafttweaker:arrow_tips>.add(<item:minecraft:flint>);

<tag:items:crafttweaker:arrow_fletching>.add(<tag:items:forge:paper>);
<tag:items:crafttweaker:arrow_fletching>.add(<tag:items:forge:feathers>);

craftingTable.addShaped("arrow", <item:minecraft:arrow>*4, [
    [<tag:items:crafttweaker:arrow_tips>],
    [<tag:items:forge:rods/wooden>],
    [<tag:items:crafttweaker:arrow_fletching>]
]);

craftingTable.addShaped("crude_arrow", <item:minecraft:arrow>*2, [
    [<item:tinkersurvival:flint_shard>],
    [<tag:items:forge:rods/wooden>],
    [<tag:items:crafttweaker:arrow_fletching>]
]);

craftingTable.addShaped("slimeball", <item:minecraft:slime_ball>, [
    [<item:minecraft:kelp>,<item:minecraft:kelp>,<item:minecraft:kelp>],
    [<item:minecraft:kelp>,<item:minecraft:water_bucket>,<item:minecraft:kelp>],
    [<item:minecraft:kelp>,<item:minecraft:kelp>,<item:minecraft:kelp>]
]);

<tag:items:crafttweaker:cooked_meat>.add(<tag:items:forge:cookedfish>);
<tag:items:crafttweaker:cooked_meat>.add(<tag:items:forge:cookedmeats>);
<tag:items:crafttweaker:cooked_meat>.add(<item:minecraft:cooked_porkchop>);
<tag:items:crafttweaker:cooked_meat>.add(<item:minecraft:cooked_beef>);
<tag:items:crafttweaker:cooked_meat>.add(<item:minecraft:cooked_chicken>);
<tag:items:crafttweaker:cooked_meat>.add(<item:minecraft:cooked_cod>);
<tag:items:crafttweaker:cooked_meat>.add(<item:minecraft:cooked_rabbit>);
<tag:items:crafttweaker:cooked_meat>.add(<item:minecraft:cooked_mutton>);
<tag:items:crafttweaker:cooked_meat>.add(<item:minecraft:cooked_salmon>);
<tag:items:crafttweaker:cooked_meat>.add(<item:aquaculture:fish_fillet_cooked>);
<tag:items:crafttweaker:cooked_meat>.add(<item:aquaculture:frog_legs_cooked>);
<tag:items:crafttweaker:cooked_meat>.add(<item:biomemakeover:cooked_toad>);
<tag:items:crafttweaker:cooked_meat>.add(<item:biomemakeover:cooked_glowfish>);
<tag:items:crafttweaker:cooked_meat>.add(<item:betteranimalsplus:turkey_cooked>);

smoker.addRecipe("leather", <item:minecraft:leather>, <tag:items:crafttweaker:cooked_meat>, 0.35, 100);

