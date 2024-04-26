#include <YSI-Includes\YSI\y_hooks>

/* 
    pt_SELECTED_TOY
*/

new Toys_Bones_Name[][] =
{
    {"Desconocido"},
    {"Espalda"},
    {"Cabeza"}
};

enum TOYS_SHOP_INFO
{
    toy_NAME[32],
    toy_MODELID,
    toy_BONE,
    toy_SKIN,
    toy_PRICE,
    toy_EXTRA,
    float:TOY_POS_X,
    float:TOY_POS_Y,
    float:TOY_POS_Z,
    float:TOY_ROT_X,
    float:TOY_ROT_Y,
    float:TOY_ROT_Z,
    float:TOY_SIZE_X,
    float:TOY_SIZE_Y,
    float:TOY_SIZE_Z
}
new TOYS_SHOP[][TOYS_SHOP_INFO] =
{

};

stock ShowPlayerToysShop(playerid)
{
    for(new i = 0; i != MAX_LISTITEMS; i++ ) PlayerTemp[playerid][pt_PLAYER_LISTITEM][i] = -1;
	new List:Toys = list_new(), index;

    LoopEx(i, sizeof(TOYS_SHOP), 0)
    {
        if(TOYS_SHOP[i][toy_SKIN] != PI[playerid][pSKIN]) continue;
        AddModelMenuItem(Toys, TOYS_SHOP[i][toy_MODELID], TOYS_SHOP[i][toy_NAME], .usingrotation = true, .rotx = -10.000000, .roty = 0.0, .rotz = -40.000000);

        PlayerTemp[playerid][pt_PLAYER_LISTITEM][index] = i;
        index ++;
    }

    ShowModelSelectionMenu(playerid, "Accesorios - Comprar", MENU_TOYS_SHOP, Toys);
    return 1;
}

stock ShowPlayerConfirmToyShop(playerid)
{
    new dialog[1024], price, Currency[64];

    if(TOYS_SHOP[ PlayerTemp[playerid][pt_SELECTED_TOY] ][toy_PRICE] > 0)
    {
        price = TOYS_SHOP[ PlayerTemp[playerid][pt_SELECTED_TOY] ][toy_PRICE];
        Currency = "{"#GREEN_COLOR"}$";
    }

    if(TOYS_SHOP[ PlayerTemp[playerid][pt_SELECTED_TOY] ][toy_EXTRA] > 0)
    {
        price = TOYS_SHOP[ PlayerTemp[playerid][pt_SELECTED_TOY] ][toy_EXTRA];
        Currency = " {"#GOLD_COLOR"}"SERVER_COIN"es";
    }

    format
    (
        dialog, 
        sizeof(dialog),

        "\
            \n\
            {ffffff}Accesorio: {"#PRIMARY_COLOR"}%s\n\
            {ffffff}Precio: {d1d1d1}%s%s\n\
            {ffffff}Lugar: {"#YELLOW_COLOR"}%s\n\
            \n\
            {d1d1d1}¿Estas seguro que quieres comprar este accesorio?\n\
            \n\
        ",
            TOYS_SHOP[ PlayerTemp[playerid][pt_SELECTED_TOY] ][toy_NAME],
            number_format_thousand(price), Currency,
            Toys_Bones_Name[ TOYS_SHOP[ PlayerTemp[playerid][pt_SELECTED_TOY] ][toy_BONE] ]
    );

    ShowPlayerDialog(playerid, DIALOG_TOYS_SHOP_CONFIRM, DIALOG_STYLE_MSGBOX, "{"#GREEN_COLOR"}Accesorio {ffffff}- Comprar", dialog, "Confirmar", "Atras");
    return 1;
}