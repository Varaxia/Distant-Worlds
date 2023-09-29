#loader contenttweaker
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.IItemFoodEaten;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;

var zsTab = VanillaFactory.createCreativeTab("custom_content", <item:contenttweaker:refined_solar_ingot>);
zsTab.register();

var leriextract = VanillaFactory.createItem("lerishrub_extract");
leriextract.creativeTab = zsTab;
leriextract.register();

var glowleaves = VanillaFactory.createBlock("glacial_leaves", <blockmaterial:leaves>);
glowleaves.setBlockHardness(0.2);
glowleaves.setToolLevel(0);
glowleaves.setBlockSoundType(<soundtype:plant>);
glowleaves.setFullBlock(false);
glowleaves.setBlockLayer("TRANSLUCENT");
glowleaves.creativeTab = zsTab;
glowleaves.register(); 

var glowberryleaves = VanillaFactory.createBlock("glacial_berry_leaves", <blockmaterial:leaves>);
glowberryleaves.setBlockHardness(0.2);
glowberryleaves.setToolLevel(0);
glowberryleaves.setBlockSoundType(<soundtype:plant>);
glowberryleaves.setFullBlock(false);
glowberryleaves.setBlockLayer("TRANSLUCENT");
glowberryleaves.creativeTab = zsTab;
glowberryleaves.register(); 

var icelogs = VanillaFactory.createBlock("glacial_log", <blockmaterial:wood>);
icelogs.setBlockHardness(2.0); 
icelogs.setToolClass("axe");
icelogs.setToolLevel(0);
icelogs.setBlockSoundType(<soundtype:wood>);
icelogs.creativeTab = zsTab;
icelogs.register();

var icetallgrass = VanillaFactory.createBlock("glacial_tallgrass", <blockmaterial:grass>);
icetallgrass.setBlockHardness(0.0); 
icetallgrass.setBlockSoundType(<soundtype:plant>);
icetallgrass.creativeTab = zsTab;
icetallgrass.register();

var iceplanks = VanillaFactory.createBlock("glacial_planks", <blockmaterial:wood>);
iceplanks.setBlockHardness(2.0); 
iceplanks.setToolClass("axe");
iceplanks.setToolLevel(0);
iceplanks.setBlockSoundType(<soundtype:wood>);
iceplanks.creativeTab = zsTab;
iceplanks.register();

var iceberry = VanillaFactory.createItemFood("glacial_berries", 5);
iceberry.healAmount = 2;
iceberry.creativeTab = zsTab; 
iceberry.register();

var soonkompot = VanillaFactory.createItemFood("unprepared_lumenberry_kompot", 1);
soonkompot.healAmount = 3; 
soonkompot.setAlwaysEdible(true);
soonkompot.setItemUseAction("DRINK");
soonkompot.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) { 
        player.give(<item:minecraft:glass_bottle>);
    }
};
soonkompot.maxStackSize = 1;
soonkompot.creativeTab = zsTab; 
soonkompot.register();

var kompot = VanillaFactory.createItemFood("lumenberry_kompot", 1);
kompot.healAmount = 5; 
kompot.setItemUseAction("DRINK");
kompot.setAlwaysEdible(true);
kompot.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) { 
        player.give(<item:minecraft:glass_bottle>);
    }
};
kompot.maxStackSize = 1;
kompot.creativeTab = zsTab; 
kompot.register();

var lerishrub = VanillaFactory.createBlock("lerishrub_leaves", <blockmaterial:leaves>);
lerishrub.setBlockHardness(0.2);
lerishrub.setToolLevel(0);
lerishrub.setBlockSoundType(<soundtype:plant>);
lerishrub.setFullBlock(false);
lerishrub.setBlockLayer("TRANSLUCENT");
lerishrub.creativeTab = zsTab;
lerishrub.register(); 

var lerishrubsugar = VanillaFactory.createBlock("lerishrub_sugar_leaves", <blockmaterial:leaves>);
lerishrubsugar.setBlockHardness(0.2);
lerishrubsugar.setToolLevel(0);
lerishrubsugar.setBlockSoundType(<soundtype:plant>);
lerishrubsugar.setFullBlock(false);
lerishrubsugar.setBlockLayer("TRANSLUCENT");
lerishrubsugar.creativeTab = zsTab;
lerishrubsugar.register(); 

var gmachine = VanillaFactory.createBlock("machine_frame", <blockmaterial:rock>);
gmachine.setBlockHardness(3.0);
gmachine.setToolClass("pickaxe");
gmachine.setToolLevel(1);
gmachine.creativeTab = zsTab;
gmachine.register();

var ckit = VanillaFactory.createItem("conversion_kit");
ckit.creativeTab = zsTab;
ckit.register();

var cpu = VanillaFactory.createItem("control_chip");
cpu.creativeTab = zsTab;
cpu.register();

var saphplate = VanillaFactory.createItem("sapphiric_plate");
saphplate.creativeTab = zsTab;
saphplate.register();

var swiring = VanillaFactory.createItem("simple_wiring");
swiring.creativeTab = zsTab;
swiring.register();

var solingot = VanillaFactory.createItem("refined_solar_ingot");
solingot.creativeTab = zsTab;
solingot.register();

var basicwaferbowl = VanillaFactory.createItemFood("bowl_of_basic_wafers", 0);
basicwaferbowl.setItemUseAction("EAT");
basicwaferbowl.setAlwaysEdible(true);
basicwaferbowl.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) { 
        player.give(<item:minecraft:bowl>);
    }
};
basicwaferbowl.onItemFoodEaten = function(stack, world, player) {
    player.addPotionEffect(<potion:minecraft:instant_damage>.makePotionEffect(1, 0.1));
    };
basicwaferbowl.maxStackSize = 1;
basicwaferbowl.creativeTab = zsTab; 
basicwaferbowl.register();

var advancedwaferbowl = VanillaFactory.createItemFood("bowl_of_advanced_wafers", 0);
advancedwaferbowl.setItemUseAction("EAT");
advancedwaferbowl.setAlwaysEdible(true);
advancedwaferbowl.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) { 
        player.give(<item:minecraft:bowl>);
    }
};
advancedwaferbowl.onItemFoodEaten = function(stack, world, player) {
    player.addPotionEffect(<potion:minecraft:instant_damage>.makePotionEffect(1, 0.1));
    };
advancedwaferbowl.maxStackSize = 1;
advancedwaferbowl.creativeTab = zsTab; 
advancedwaferbowl.register();