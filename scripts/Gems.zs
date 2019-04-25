val gems = <minecraft:diamond> | <minecraft:emerald> | <biomesoplenty:gem:*>;
val output = <jmilpol:pendant>;
val enderPearl = <minecraft:ender_pearl>;
val silkyJewel = <tconstruct:materials:16>;
val creosote = <forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000});

recipes.addShaped("Pendant", output,
 [[gems,enderPearl,gems],
  [gems,silkyJewel,gems],
  [gems,creosote,gems]]);
