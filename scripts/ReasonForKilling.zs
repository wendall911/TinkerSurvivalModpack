import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.entity.EntityType;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.modifier.ILootModifier;

val monsterEntities = [
    "minecraft:blaze",
    "minecraft:cave_spider",
    "minecraft:creeper",
    "minecraft:drowned",
    "minecraft:elder_guardian",
    "minecraft:enderman",
    "minecraft:evoker",
    "minecraft:evoker_fangs",
    "minecraft:ghast",
    "minecraft:guardian",
    "minecraft:hoglin",
    "minecraft:husk",
    "minecraft:illusioner",
    "minecraft:piglin",
    "minecraft:piglin_brute",
    "minecraft:pillager",
    "minecraft:shulker",
    "minecraft:skeleton",
    "minecraft:spider",
    "minecraft:stray",
    "minecraft:vex",
    "minecraft:vindicator",
    "minecraft:witch",
    "minecraft:wither_skeleton",
    "minecraft:zombie",
    "minecraft:zombie_villager"
] as string[];

for entityid in monsterEntities {
    val entitytype = BracketHandlers.getEntityType(entityid);
    val name = entityid.split(":")[1];

    entitytype.addPlayerOnlyLootModifier(
        name + "_tinkersurvival",
        CommonLootModifiers.addAllWithChance(
            <item:immersiveengineering:shader_bag_common> % 0.01,
            <item:immersiveengineering:shader_bag_uncommon> % 0.02,
            <item:immersiveengineering:shader_bag_rare> % 0.02,
            <item:immersiveengineering:blueprint>.withTag({blueprint:"specialBullet"}) % 0.03,
            <item:tinkersurvival:bandage> % 4.0,
            <item:immersiveengineering:wirecoil_copper> % 0.3,
            <item:immersiveengineering:wirecoil_copper_ins> % 0.2,
            <item:immersiveengineering:wirecoil_redstone> % 0.1,
            <item:immersiveengineering:wirecutter> % 0.04,
            <item:immersiveengineering:hammer> % 0.04,
            <item:tconstruct:bacon> % 0.09,
            <item:sushigocrafting:salmon_maki> % 0.1,
            <item:sushigocrafting:tuna_maki> % 0.1,
            <item:sushigocrafting:crab_maki> % 0.1,
            <item:sushigocrafting:salmon_gunkan> % 0.1,
            <item:sushigocrafting:tuna_gunkan> % 0.1,
            <item:sushigocrafting:tobiko_tuna_cucumber_california> % 0.1,
            <item:sushigocrafting:tuna_cucumber_california> % 0.1,
            <item:sushigocrafting:tobiko_tuna_california> % 0.1,
            <item:sushigocrafting:tuna_california> % 0.1,
            <item:sushigocrafting:tobiko_tuna_cheese_california> % 0.1,
            <item:sushigocrafting:tuna_cheese_california> % 0.1,
            <item:sushigocrafting:tobiko_salmon_cucumber_california> % 0.1,
            <item:sushigocrafting:salmon_cucumber_california> % 0.1,
            <item:sushigocrafting:tobiko_salmon_california> % 0.1,
            <item:sushigocrafting:salmon_california> % 0.1,
            <item:sushigocrafting:tobiko_salmon_cheese_california> % 0.1,
            <item:sushigocrafting:salmon_cheese_california> % 0.1,
            <item:sushigocrafting:tobiko_crab_cucumber_california> % 0.1,
            <item:sushigocrafting:crab_cucumber_california> % 0.1,
            <item:sushigocrafting:tobiko_crab_california> % 0.1,
            <item:sushigocrafting:crab_california> % 0.1,
            <item:sushigocrafting:tobiko_crab_cheese_california> % 0.1,
            <item:sushigocrafting:crab_cheese_california> % 0.1,
            <item:sushigocrafting:salmon_nigiri> % 0.1,
            <item:sushigocrafting:tuna_nigiri> % 0.1,
            <item:sushigocrafting:shrimp_nigiri> % 0.1,
            <item:sushigocrafting:salmon_temaki> % 0.1,
            <item:sushigocrafting:tuna_temaki> % 0.1,
            <item:sushigocrafting:shrimp_temaki> % 0.1,
            <item:sushigocrafting:chicken_temaki> % 0.1
        )
    );
}

