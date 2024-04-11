#include <YSI-Includes\YSI\y_hooks>

/* 
	DIALOG_INVENTORY
	DIALOG_INVENTORY_OPTIONS
	DIALOG_INVENTORY_EXTRA

    pt_POCKETS_SELECTED_PLAYER
	pt_POCKETS_PLAYERID
*/

#define MAX_INVENTORY_SLOTS (10)
#define MAX_NU_POCKETS      (5)
#define MAX_SU_POCKETS      (7)

/* 

    HEADER

*/

enum E_INVENTORY_DATA
{
    bool:inventory_VALID,
    inventory_ID,
    inventory_TYPE,
    inventory_EXTRA
};
new INVENTORY_DATA[MAX_PLAYERS][MAX_INVENTORY_SLOTS][E_INVENTORY_DATA];

enum
{
    INVENTORY_TYPE_NONE = -1,
    INVENTORY_TYPE_SNACKS,
    INVENTORY_TYPE_WATER_BOTTLE
}

enum E_INVENTORY_ITEMS_DATA
{
    inv_type,
    inv_name[32],
    Float:inv_HUNGER,
    Float:inv_THIRST,
    inv_AMOUNT
};
new INVENTORY_ITEMS_DATA[][E_INVENTORY_ITEMS_DATA] =
{
    {INVENTORY_TYPE_SNACKS, "Snacks", 0.4, 0.0, 4},
    {INVENTORY_TYPE_WATER_BOTTLE, "Botella de Agua", 0.0, 0.7, 1}
};

enum
{
    INVENTORY_HEAD = 0,
    INVENTORY_BACK,
    INVENTORY_HAND,
    INVENTORY_SLOT_0,
    INVENTORY_SLOT_1,
    INVENTORY_SLOT_2,
    INVENTORY_SLOT_3,
    INVENTORY_SLOT_4,
    
    INVENTORY_SLOT_5,
    INVENTORY_SLOT_6,

    INVENTORY_SLOT_CREW
}

/* 

    IMPL

*/

stock GetPlayerFreePocketsSlot(playerid)
{
    new Count = MAX_NU_POCKETS;
    if(PI[playerid][pVIP]) Count = MAX_SU_POCKETS;

    for(new i = 2; i != Count; i++)
    {
        if(!INVENTORY_DATA[playerid][i][inventory_VALID]) return i;
    }
    return -1;
}

stock InserPlayerPocketData(playerid, index)
{
    inline OnPlayerPocketInserted()
    {
        INVENTORY_DATA[playerid][index][inventory_ID] = cache_insert_id();
        INVENTORY_DATA[playerid][index][inventory_VALID] = true;
    }
    mysql_format(handle_db, QUERY_BUFFER, sizeof QUERY_BUFFER, "INSERT INTO pinventory (id_player, type, extra, slot) VALUES(%d, %d, %d, %d);",
        PI[playerid][pID], INVENTORY_DATA[playerid][index][inventory_TYPE], INVENTORY_DATA[playerid][index][inventory_EXTRA], index
    );
    mysql_tquery_inline(handle_db, QUERY_BUFFER, using inline OnPlayerPocketInserted);
    return 1;
}

stock LoadPlayerPockets(playerid)
{
    inline OnPlayerPocketsLoad()
    {
        new rows;
        if(cache_get_row_count(rows))
        {
            if(rows)
            {
                LoopEx(i, rows, 0)
                {
                    new slot;
                    cache_get_value_name_int(i, "slot", slot);

                    INVENTORY_DATA[playerid][slot][inventory_VALID] = true;
                    cache_get_value_name_int(i, "type", INVENTORY_DATA[playerid][slot][inventory_TYPE]);
                    cache_get_value_name_int(i, "extra", INVENTORY_DATA[playerid][slot][inventory_EXTRA]);
                }
            }
        }
    }
    mysql_format(handle_db, QUERY_BUFFER, sizeof QUERY_BUFFER, "SELECT * FROM pinventory WHERE id_player = %d;", PI[playerid][pID]);
    mysql_tquery_inline(handle_db, QUERY_BUFFER, using inline OnPlayerPocketsLoad);
    return 1;
}

stock InsertPlayerPocket_Snacks(playerid, index)
{
    INVENTORY_DATA[playerid][index][inventory_TYPE] = INVENTORY_TYPE_SNACKS;
    INVENTORY_DATA[playerid][index][inventory_EXTRA] = INVENTORY_ITEMS_DATA[ INVENTORY_DATA[playerid][index][inventory_TYPE] ][inv_AMOUNT];
    InserPlayerPocketData(playerid, index);
    return index;
}

stock InsertPlayerPocket_WaterBottle(playerid, index)
{
    INVENTORY_DATA[playerid][index][inventory_TYPE] = INVENTORY_TYPE_WATER_BOTTLE;
    INVENTORY_DATA[playerid][index][inventory_EXTRA] = INVENTORY_ITEMS_DATA[ INVENTORY_DATA[playerid][index][inventory_TYPE] ][inv_AMOUNT];
    InserPlayerPocketData(playerid, index);
    return index;
}

stock ShowPlayerPockets(playerid, pid)
{
    for(new i = 0; i != MAX_LISTITEMS; i++ ) PlayerTemp[pid][pt_PLAYER_LISTITEM][i] = -1;

    new caption[455], dialog[6144], line_str[4096], listitem;

    format(caption, sizeof(caption), "INVENTARIO | SKIN %d", PI[pid][pSKIN]);

    if(INVENTORY_DATA[pid][INVENTORY_HEAD][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_HEAD][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_HEAD][inventory_TYPE] ][inv_name]);
    else line_str = "{ff0000}Vacio{ffffff}[] | Cabeza\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_HEAD;
    listitem ++;

    if(INVENTORY_DATA[pid][INVENTORY_BACK][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_BACK][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_BACK][inventory_TYPE] ][inv_name]);
    else line_str = "{ff0000}Vacio{ffffff}[] | Espalda\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_BACK;
    listitem ++;

    if(INVENTORY_DATA[pid][INVENTORY_HAND][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_HAND][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_HAND][inventory_TYPE] ][inv_name]);
    else line_str = "{ff0000}Vacio{ffffff}[] | Mano\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_HAND;
    listitem ++;

    if(INVENTORY_DATA[pid][INVENTORY_SLOT_0][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_SLOT_0][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_SLOT_0][inventory_TYPE] ][inv_name]);
    else line_str = "{ff0000}Vacio{ffffff}[] | Bolsillo\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_SLOT_0;
    listitem ++;

    if(INVENTORY_DATA[pid][INVENTORY_SLOT_1][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_SLOT_1][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_SLOT_1][inventory_TYPE] ][inv_name]);
    else line_str = "{ff0000}Vacio{ffffff}[] | Bolsillo\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_SLOT_1;
    listitem ++;

    if(INVENTORY_DATA[pid][INVENTORY_SLOT_2][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_SLOT_2][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_SLOT_2][inventory_TYPE] ][inv_name]);
    else line_str = "{ff0000}Vacio{ffffff}[] | Bolsillo\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_SLOT_2;
    listitem ++;

    if(INVENTORY_DATA[pid][INVENTORY_SLOT_3][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_SLOT_3][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_SLOT_3][inventory_TYPE] ][inv_name]);
    else line_str = "{ff0000}Vacio{ffffff}[] | Bolsillo\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_SLOT_3;
    listitem ++;

    if(INVENTORY_DATA[pid][INVENTORY_SLOT_4][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_SLOT_4][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_SLOT_4][inventory_TYPE] ][inv_name]);
    else line_str = "{ff0000}Vacio{ffffff}[] | Bolsillo\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_SLOT_4;
    listitem ++;

    if(PI[pid][pVIP])
    {
        if(INVENTORY_DATA[pid][INVENTORY_SLOT_5][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_SLOT_5][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_SLOT_5][inventory_TYPE] ][inv_name]);
        else line_str = "{ff0000}Vacio{ffffff}[] | Bolsillo\n";
        strcat(dialog, line_str);
        PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_SLOT_5;
        listitem ++;

        if(INVENTORY_DATA[pid][INVENTORY_SLOT_6][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_SLOT_6][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_SLOT_6][inventory_TYPE] ][inv_name]);
        else line_str = "{ff0000}Vacio{ffffff}[] | Bolsillo\n";
        strcat(dialog, line_str);
        PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_SLOT_6;
        listitem ++;
    }

    if(PI[pid][pCREW]) format(line_str, 445, "{ffffff}Banda: %s\n", CREW_INFO[ PlayerTemp[pid][pt_CREW_INDEX] ][crew_NAME]);
    else line_str = "{ffffff}Banda: Ninguna\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_SLOT_CREW;
    listitem ++;

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