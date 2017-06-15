----------------------------------------------------------------------------
--	Ranked Matchmaking AI v1.0a
--	Author: adamqqq		Email:adamqqq@163.com
----------------------------------------------------------------------------
require( GetScriptDirectory().."/utility" ) 

local ItemsToBuy = 
{ 
	"item_tango",
	"item_clarity",
	"item_wind_lace",
	"item_branches",
	"item_branches",
	"item_boots",	
	"item_circlet",
	"item_magic_stick",				--大魔棒
	"item_energy_booster",			--秘法鞋
	
	"item_cloak",
	"item_shadow_amulet",			--微光
	
	"item_ring_of_health",
	"item_staff_of_wizardry",
	"item_recipe_force_staff",		--推推7.06
	
	"item_blink",					--跳刀
	
	"item_point_booster",
	"item_staff_of_wizardry",
	"item_ogre_axe",
	"item_blade_of_alacrity",		--蓝杖
	
	"item_mystic_staff",
	"item_ultimate_orb",
	"item_void_stone",				--羊刀

}

utility.checkItemBuild(ItemsToBuy)

function ItemPurchaseThink()
	utility.BuySupportItem()
	utility.BuyCourier()
	utility.ItemPurchase(ItemsToBuy)
end