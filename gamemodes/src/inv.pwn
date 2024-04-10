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

new Empty_InventoryData[] =
{
    "{ff0000}Vacio{ffffff}[] | Cabeza\n",
    "{ff0000}Vacio{ffffff}[] | Espalda\n",
    "{ff0000}Vacio{ffffff}[] | Mano\n",
    "{ff0000}Vacio{ffffff}[] | Bolsillo\n",
    "{ff0000}Vacio{ffffff}[] | Bolsillo\n",
    "{ff0000}Vacio{ffffff}[] | Bolsillo\n",
    "{ff0000}Vacio{ffffff}[] | Bolsillo\n",
    "{ff0000}Vacio{ffffff}[] | Bolsillo\n",
    "{ff0000}Vacio{ffffff}[] | Bolsillo\n",
    "{ff0000}Vacio{ffffff}[] | Bolsillo\n",
    "{ff0000}Vacio{ffffff}[] | Bolsillo\n",
    "{ff0000}Vacio{ffffff}[] | Bolsillo\n",
    "{ff0000}Vacio{ffffff}[] | Bolsillo\n",
};

enum E_INVENTORY_DATA
{
    bool:inventory_VALID,
    inventory_TYPE,
    inventory_EXTRA
};
new INVENTORY_DATA[MAX_PLAYERS][MAX_INVENTORY_SLOTS][E_INVENTORY_DATA];

enum
{
    INVENTORY_TYPE_NONE = -1
}

enum E_INVENTORY_ITEMS_DATA
{
    inv_type,
    inv_name[32]
};
new INVENTORY_ITEMS_DATA[][E_INVENTORY_ITEMS_DATA] =
{
    {INVENTORY_TYPE_NONE, "Nada XD"}
};

/* 

    IMPL

*/

stock ShowPlayerPockets(playerid, pid)
{
    new caption[(64 + 48)], dialog[(64 * 32 * 10)];
    for(new i = 0; i != MAX_INVENTORY_SLOTS; i++)
    {
        if(INVENTORY_DATA[pid][i][inventory_VALID])
        {
            new line_str[445];
            format(line_str, sizeof(line_str), "{"#GREEN_COLOR"}[%d] {FFFFFF}| %s\n", INVENTORY_DATA[pid][i][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][i][inventory_TYPE] ][inv_name]);
        }
        else strcat(dialog, Empty_InventoryData[i]);
    }

    new crew_str[445];
    if(PI[playerid][pCREW]) format(crew_str, 445, "");
    else crew_str = "{ffffff}Banda: Ninguna\n";
    strcat(dialog, crew_str);

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
    return Y_HOOKS_CONTINUE_RETURN_1;
}