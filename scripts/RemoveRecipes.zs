import crafttweaker.api.recipe.IRecipeManager;

import mods.jeitweaker.Jei;
import mods.jeitweaker.ingredient.JeiIngredient;

val removals = [
    <item:botania:manasteel_pick>,
    <item:botania:manasteel_shovel>,
    <item:botania:manasteel_hoe>,
    <item:botania:manasteel_axe>,
    <item:botania:manasteel_sword>,
    <item:botania:manasteel_shears>,
    <item:mowziesmobs:spear>,
    <item:mowziesmobs:earthbore_gauntlet>,
    <item:mowziesmobs:earth_talisman>
];

for item in removals {
    Jei.hideIngredient(item) as void;
}

for item in removals {
    craftingTable.remove(item);
}
