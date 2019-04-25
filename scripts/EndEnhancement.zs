val enderEye = <minecraft:ender_eye>;
val enderPearl = <minecraft:ender_pearl>;
val gasoline = <forge:bucketfilled>.withTag({FluidName: "gasoline", Amount: 1000});
val blazePowder = <minecraft:blaze_powder>;
val slag = <forge:bucketfilled>.withTag({FluidName: "napalm", Amount: 1000});

// Remove Eye of Ender recipe.
recipes.remove(enderEye);

mods.immersiveengineering.ArcFurnace.addRecipe(enderEye, enderPearl, slag, 100, 6144, [blazePowder, gasoline], "Alloying");
