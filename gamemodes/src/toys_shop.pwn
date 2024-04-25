#include <YSI-Includes\YSI\y_hooks>

/* 
    pt_SELECTED_TOY
*/

enum
{
    TOY_POSITION_SPINE = 1,
    TOY_POSITION_HEAD
}

enum TOYS_SHOP_INFO
{
    toy_NAME[32],
    toy_PRICE,
    toy_EXTRA,
    toy_MODELID,
    toy_BONE
}
new TOYS_SHOP[][TOYS_SHOP_INFO] =
{
    {"Guitarra Warlock", 0, 5, 19317,TOY_POSITION_SPINE},
    {"Guitarra Warlock Blanca", 0, 5, 19318,TOY_POSITION_SPINE},
    {"Guitarra Warlock Negra", 0, 5, 19319,TOY_POSITION_SPINE},
    {"Casco Obrero", 30000, 0, 18638, TOY_POSITION_HEAD},
    {"Casco Moto rojo", 1650, 0, 18977, TOY_POSITION_HEAD},
    {"Bandana", 1500, 0, 18891, TOY_POSITION_HEAD}
};

stock ShowPlayerToysShop(playerid)
{
    for(new i = 0; i != MAX_LISTITEMS; i++ ) PlayerTemp[playerid][pt_PLAYER_LISTITEM][i] = -1;
	new List:Toys = list_new(), index;

    LoopEx(i, sizeof(TOYS_SHOP), 0)
    {
        AddModelMenuItem(Toys, TOYS_SHOP[i][toy_MODELID], TOYS_SHOP[i][toy_NAME], .usingrotation = true, .rotx = -10.000000, .roty = 0.0, .rotz = -40.000000);

        PlayerTemp[playerid][pt_PLAYER_LISTITEM][index] = i;
        index ++;
    }

    ShowModelSelectionMenu(playerid, "Accesorios - Comprar", MENU_TOYS_SHOP, Toys);
    return 1;
}