import crafttweaker.api.recipe.IRecipeManager;

import mods.jei.JEI;
import mods.jei.component.JeiIngredient;

JEI.hideIngredient(<item:botania:manasteel_pick> as JeiIngredient) as void;
JEI.hideIngredient(<item:botania:manasteel_shovel> as JeiIngredient) as void;
JEI.hideIngredient(<item:botania:manasteel_hoe> as JeiIngredient) as void;
JEI.hideIngredient(<item:botania:manasteel_axe> as JeiIngredient) as void;
JEI.hideIngredient(<item:botania:manasteel_sword> as JeiIngredient) as void;
JEI.hideIngredient(<item:botania:manasteel_shears> as JeiIngredient) as void;

craftingTable.remove(<item:botania:manasteel_pick>);
craftingTable.remove(<item:botania:manasteel_shovel>);
craftingTable.remove(<item:botania:manasteel_hoe>);
craftingTable.remove(<item:botania:manasteel_axe>);
craftingTable.remove(<item:botania:manasteel_sword>);
craftingTable.remove(<item:botania:manasteel_shears>);
