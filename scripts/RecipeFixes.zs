import crafttweaker.api.recipe.IRecipeManager;

val removals = [
] as string[];

for item in removals {
    craftingTable.removeByName(item);
}
