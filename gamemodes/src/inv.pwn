#include <YSI-Includes\YSI\y_hooks>

/* 
	DIALOG_INVENTORY
	DIALOG_INVENTORY_OPTIONS
	DIALOG_INVENTORY_EXTRA

    pt_POCKETS_SELECTED_PLAYER
	pt_POCKETS_PLAYERID
*/

#define MAX_INVENTORY_SLOTS (7 + 3)

/* 

    HEADER

*/

enum
{
    INVENTORY_HEAD,
    INVENTORY_BACK,
    INVENTORY_HAND,
    INVENTORY_SLOT_0,
    INVENTORY_SLOT_1,
    INVENTORY_SLOT_2,
    INVENTORY_SLOT_3,
    INVENTORY_SLOT_4,
    INVENTORY_SLOT_5,
    INVENTORY_SLOT_6,
    INVENTORY_SLOT_7,
};

enum E_INVENTORY_DATA
{
    inventory_TYPE,
    inventory_EXTRA
};
new INVENTORY_DATA[MAX_PLAYERS][MAX_INVENTORY_SLOTS][E_INVENTORY_DATA];
#define pInv(%0)[%1][%2]    INVENTORY_DATA[%0][%1][%2]

/* 

    IMPL

*/

stock ShowPlayerPockets(playerid, pid)
{
    for(new i = 0; i != MAX_LISTITEMS; i++ ) PlayerTemp[playerid][pt_PLAYER_LISTITEM][i] = -1;

    new caption[(64 + 48)], dialog[(64 * 32 * 10)], listitem;

    ShowPlayerDialog(playerid, DIALOG_INVENTORY, DIALOG_STYLE_TABLIST, caption, dialog, "Continuar", "Cerrar");

    pTemp(playerid)[pt_POCKETS_PLAYERID] = playerid;
    pTemp(playerid)[pt_POCKETS_SELECTED_PLAYER] = pid;
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_NO)
    {
        ShowPlayerPockets(playerid, playerid);
    }
}