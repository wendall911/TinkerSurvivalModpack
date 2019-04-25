// Adding blaze powder recipe. This is to allow players to craft more early-mid
// game components without going to the nether. This is especially important with
// the difficulty increase and temperature.

val book = <enchiridion:book>.withTag({identifier:"modpack"});

recipes.addShapeless(<minecraft:blaze_powder>,
    [<minecraft:gunpowder>,<minecraft:redstone>]);

recipes.addShapeless(book,
    [<minecraft:book>,<tinkersurvival:rock_stone>]);
