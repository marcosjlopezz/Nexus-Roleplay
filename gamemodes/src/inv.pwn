#include <YSI-Includes\YSI\y_hooks>

/* 
	DIALOG_INVENTORY
	DIALOG_INVENTORY_OPTIONS
	DIALOG_INVENTORY_OPTIONS_EXTRA
	DIALOG_INVENTORY_EXTRA_INFO
	DIALOG_INVENTORY_EXTRA

    pt_POCKETS_SELECTED_PLAYER
	pt_POCKETS_PLAYERID
    pt_SELECTED_POCKET_SLOT
    pt_HAND_POCKET
    pt_INVENTORY_DATA_EXTRA
    pt_INVENTORY_SELL_EXTRA
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
    inv_TYPE,
    inv_NAME[32],
    Float:inv_HUNGRY,
    Float:inv_THIRST,
    inv_AMOUNT
};
new INVENTORY_ITEMS_DATA[][E_INVENTORY_ITEMS_DATA] =
{
    {INVENTORY_TYPE_SNACKS, "Snacks", 0.4, 0.0, 4},
    {INVENTORY_TYPE_WATER_BOTTLE, "Botella de Agua", 0.0, 0.7, 1}
};

enum E_HAND_ATTACHED_OBJECT
{
    hand_TYPE,
    hand_MODELID,
    hand_BONE, //5 izq || 6 derech
    Float:hand_X,
    Float:hand_Y,
    Float:hand_Z,
    Float:hand_RX,
    Float:hand_RY,
    Float:hand_RZ,
    Float:hand_SX,
    Float:hand_SY,
    Float:hand_SZ
}
new HAND_ATTACH_OBJECT[][E_HAND_ATTACHED_OBJECT] =
{
    {INVENTORY_TYPE_SNACKS, 2663, 6, 0.049999, 0.020000, 0.000000, 5.000000, -370.000000, -359.070007, 0.290000, 0.370000, 0.290000},
    {INVENTORY_TYPE_WATER_BOTTLE, 19570, 6, 0.109999, 0.030000, -0.119999, 5.000000, -370.000000, -359.070007, 0.440000, 0.409999, 0.620000}
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

enum
{
    INV_SELECTION_USE,
    INV_SELECTION_HAND_SAVE,
    INV_SELECTION_GIVE,
    INV_SELECTION_COLLECT,
    INV_SELECTION_SELL,
    INV_SELECTION_SELL_EXTRA,
    INV_SELECTION_BOOT_SAVE
}

/* 

    IMPL

*/

stock GetPlayerFreePocketsSlot(playerid)
{
    new Count = MAX_NU_POCKETS + 3;
    if(PI[playerid][pVIP]) Count = MAX_SU_POCKETS + 3;

    for(new i = 0; i != Count; i++)
    {
        if(i == INVENTORY_HEAD) continue;
        if(i == INVENTORY_BACK) continue;
        if(i == INVENTORY_HAND) continue;

        if(!INVENTORY_DATA[playerid][i][inventory_VALID]) return i;
    }
    return -1;
}

stock GetPlayerPocketIndexByID(playerid, id)
{
    new Count = MAX_NU_POCKETS + 3;
    if(PI[playerid][pVIP]) Count = MAX_SU_POCKETS + 3;

    for(new i = 0; i != Count; i++)
    {
        if(!INVENTORY_DATA[playerid][i][inventory_VALID]) continue;
        if(INVENTORY_DATA[playerid][i][inventory_ID] == id) return i;
    }
    return -1;
}

stock SetPlayerHandObject(playerid)
{
    if(PlayerTemp[playerid][pt_HAND_POCKET] == -1) return 0;
    new index = GetPlayerPocketIndexByID(playerid, PlayerTemp[playerid][pt_HAND_POCKET]);
    new type = INVENTORY_DATA[playerid][index][inventory_TYPE];

    SetPlayerAttachedObject
    (
        playerid, 7, HAND_ATTACH_OBJECT[ type ][hand_MODELID], HAND_ATTACH_OBJECT[ type ][hand_BONE], 
        HAND_ATTACH_OBJECT[ type ][hand_X], 
        HAND_ATTACH_OBJECT[ type ][hand_Y], 
        HAND_ATTACH_OBJECT[ type ][hand_Z], 
        HAND_ATTACH_OBJECT[ type ][hand_RX], 
        HAND_ATTACH_OBJECT[ type ][hand_RY], 
        HAND_ATTACH_OBJECT[ type ][hand_RZ], 
        HAND_ATTACH_OBJECT[ type ][hand_SX], 
        HAND_ATTACH_OBJECT[ type ][hand_SY], 
        HAND_ATTACH_OBJECT[ type ][hand_SZ], 
        0, 0
    );
    return 1;
}

stock RemovePlayerHandObject(playerid)
{
    RemovePlayerAttachedObject(playerid, 7);
}

stock InserPlayerPocketData(playerid, index)
{
    inline OnPlayerPocketInserted()
    {
        INVENTORY_DATA[playerid][index][inventory_ID] = cache_insert_id();
        INVENTORY_DATA[playerid][index][inventory_VALID] = true;
        if(index == INVENTORY_HAND) PlayerTemp[playerid][pt_HAND_POCKET] = INVENTORY_DATA[playerid][index][inventory_ID];
    }
    mysql_format(handle_db, QUERY_BUFFER, sizeof QUERY_BUFFER, "INSERT INTO pinventory (id_player, type, extra, slot) VALUES(%d, %d, %d, %d);",
        PI[playerid][pID], INVENTORY_DATA[playerid][index][inventory_TYPE], INVENTORY_DATA[playerid][index][inventory_EXTRA], index
    );
    mysql_tquery_inline(handle_db, QUERY_BUFFER, using inline OnPlayerPocketInserted);
    return 1;
}

stock RemovePlayerPocketSlot(playerid, index)
{
    INVENTORY_DATA[playerid][index][inventory_VALID] = false;
    INVENTORY_DATA[playerid][index][inventory_ID] = 0;
    INVENTORY_DATA[playerid][index][inventory_TYPE] = INVENTORY_TYPE_NONE;
    INVENTORY_DATA[playerid][index][inventory_EXTRA] = 0;

    mysql_format(handle_db, QUERY_BUFFER, sizeof QUERY_BUFFER, "DELETE FROM pinventory WHERE id_player = %d AND slot = %d;", PI[playerid][pID], index);
    mysql_tquery(handle_db, QUERY_BUFFER);
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
                    cache_get_value_name_int(i, "id", INVENTORY_DATA[playerid][slot][inventory_ID]);
                    cache_get_value_name_int(i, "type", INVENTORY_DATA[playerid][slot][inventory_TYPE]);
                    cache_get_value_name_int(i, "extra", INVENTORY_DATA[playerid][slot][inventory_EXTRA]);

                    if(slot == INVENTORY_HAND) PlayerTemp[playerid][pt_HAND_POCKET] = INVENTORY_DATA[playerid][slot][inventory_ID];
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

    if(INVENTORY_DATA[pid][INVENTORY_HEAD][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_HEAD][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_HEAD][inventory_TYPE] ][inv_NAME]);
    else line_str = "{ff0000}Vacio{ffffff}[] | Cabeza\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_HEAD;
    listitem ++;

    if(INVENTORY_DATA[pid][INVENTORY_BACK][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_BACK][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_BACK][inventory_TYPE] ][inv_NAME]);
    else line_str = "{ff0000}Vacio{ffffff}[] | Espalda\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_BACK;
    listitem ++;

    if(INVENTORY_DATA[pid][INVENTORY_HAND][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_HAND][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_HAND][inventory_TYPE] ][inv_NAME]);
    else line_str = "{ff0000}Vacio{ffffff}[] | Mano\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_HAND;
    listitem ++;

    if(INVENTORY_DATA[pid][INVENTORY_SLOT_0][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_SLOT_0][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_SLOT_0][inventory_TYPE] ][inv_NAME]);
    else line_str = "{ff0000}Vacio{ffffff}[] | Bolsillo\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_SLOT_0;
    listitem ++;

    if(INVENTORY_DATA[pid][INVENTORY_SLOT_1][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_SLOT_1][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_SLOT_1][inventory_TYPE] ][inv_NAME]);
    else line_str = "{ff0000}Vacio{ffffff}[] | Bolsillo\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_SLOT_1;
    listitem ++;

    if(INVENTORY_DATA[pid][INVENTORY_SLOT_2][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_SLOT_2][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_SLOT_2][inventory_TYPE] ][inv_NAME]);
    else line_str = "{ff0000}Vacio{ffffff}[] | Bolsillo\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_SLOT_2;
    listitem ++;

    if(INVENTORY_DATA[pid][INVENTORY_SLOT_3][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_SLOT_3][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_SLOT_3][inventory_TYPE] ][inv_NAME]);
    else line_str = "{ff0000}Vacio{ffffff}[] | Bolsillo\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_SLOT_3;
    listitem ++;

    if(INVENTORY_DATA[pid][INVENTORY_SLOT_4][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_SLOT_4][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_SLOT_4][inventory_TYPE] ][inv_NAME]);
    else line_str = "{ff0000}Vacio{ffffff}[] | Bolsillo\n";
    strcat(dialog, line_str);
    PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_SLOT_4;
    listitem ++;

    if(PI[pid][pVIP])
    {
        if(INVENTORY_DATA[pid][INVENTORY_SLOT_5][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_SLOT_5][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_SLOT_5][inventory_TYPE] ][inv_NAME]);
        else line_str = "{ff0000}Vacio{ffffff}[] | Bolsillo\n";
        strcat(dialog, line_str);
        PlayerTemp[pid][pt_PLAYER_LISTITEM][listitem] = INVENTORY_SLOT_5;
        listitem ++;

        if(INVENTORY_DATA[pid][INVENTORY_SLOT_6][inventory_VALID]) format(line_str, 445, "{"#GREEN_COLOR"}[%d]{ffffff} | %s\n", INVENTORY_DATA[pid][INVENTORY_SLOT_6][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[pid][INVENTORY_SLOT_6][inventory_TYPE] ][inv_NAME]);
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

stock ShowPlayerInventoryOptions(playerid, slot)
{
    if(!INVENTORY_DATA[playerid][slot][inventory_VALID]) return 0;
    for(new i = 0; i != MAX_LISTITEMS; i++ ) PlayerTemp[playerid][pt_PLAYER_LISTITEM][i] = -1;

    new 
        dialog[4096], 
        caption[445], 
        listitem, 
        Inv_Type = INVENTORY_DATA[playerid][slot][inventory_TYPE]
    ;

    if(slot >= INVENTORY_HAND)
    {
        switch(Inv_Type)
        {
            case INVENTORY_TYPE_NONE: ShowPlayerPockets(playerid, pTemp(playerid)[pt_POCKETS_SELECTED_PLAYER]);
            case INVENTORY_TYPE_SNACKS, INVENTORY_TYPE_WATER_BOTTLE:
            {
                format(caption, sizeof(caption), "{"#GREEN_COLOR"}%s {ffffff}- Opciones", INVENTORY_ITEMS_DATA[Inv_Type][inv_NAME]);

                if(PlayerTemp[playerid][pt_HAND_POCKET] == INVENTORY_DATA[playerid][slot][inventory_ID])
                {
                    strcat(dialog, "Guardar\n");
                    PlayerTemp[playerid][pt_PLAYER_LISTITEM][listitem] = INV_SELECTION_HAND_SAVE;
                    listitem ++;
                }
                else
                {
                    strcat(dialog, "Sacar\n");
                    PlayerTemp[playerid][pt_PLAYER_LISTITEM][listitem] = INV_SELECTION_USE;
                    listitem ++;
                }

                if(PlayerTemp[playerid][pt_HAND_POCKET] == INVENTORY_DATA[playerid][slot][inventory_ID])
                {
                    strcat(dialog, "Dar\n");
                    PlayerTemp[playerid][pt_PLAYER_LISTITEM][listitem] = INV_SELECTION_GIVE;
                    listitem ++;
                
                    strcat(dialog, "Juntar\n");
                    PlayerTemp[playerid][pt_PLAYER_LISTITEM][listitem] = INV_SELECTION_COLLECT;
                    listitem ++;

                    strcat(dialog, "Vender en Dinero\n");
                    PlayerTemp[playerid][pt_PLAYER_LISTITEM][listitem] = INV_SELECTION_SELL;
                    listitem ++;

                    strcat(dialog, "Vender en "SERVER_COIN"es\n");
                    PlayerTemp[playerid][pt_PLAYER_LISTITEM][listitem] = INV_SELECTION_SELL_EXTRA;
                    listitem ++;                
                }

                ShowPlayerDialog(playerid, DIALOG_INVENTORY_OPTIONS, DIALOG_STYLE_LIST, caption, dialog, "Continuar", "Cerrar");
            }
            default:
            {
                format(caption, sizeof(caption), "{"#GREEN_COLOR"}%s {ffffff}- Opciones", INVENTORY_ITEMS_DATA[Inv_Type][inv_NAME]);

                if(PlayerTemp[playerid][pt_HAND_POCKET] == INVENTORY_DATA[playerid][slot][inventory_ID])
                {
                    strcat(dialog, "Guardar\n");
                    PlayerTemp[playerid][pt_PLAYER_LISTITEM][listitem] = INV_SELECTION_HAND_SAVE;
                    listitem ++;
                }
                else
                {
                    strcat(dialog, "Sacar\n");
                    PlayerTemp[playerid][pt_PLAYER_LISTITEM][listitem] = INV_SELECTION_USE;
                    listitem ++;
                }

                if(PlayerTemp[playerid][pt_HAND_POCKET] == INVENTORY_DATA[playerid][slot][inventory_ID])
                {
                    strcat(dialog, "Dar\n");
                    PlayerTemp[playerid][pt_PLAYER_LISTITEM][listitem] = INV_SELECTION_GIVE;
                    listitem ++;

                    strcat(dialog, "Vender en Dinero\n");
                    PlayerTemp[playerid][pt_PLAYER_LISTITEM][listitem] = INV_SELECTION_SELL;
                    listitem ++;

                    strcat(dialog, "Vender en "SERVER_COIN"es\n");
                    PlayerTemp[playerid][pt_PLAYER_LISTITEM][listitem] = INV_SELECTION_SELL_EXTRA;
                    listitem ++;
                }

                ShowPlayerDialog(playerid, DIALOG_INVENTORY_OPTIONS, DIALOG_STYLE_LIST, caption, dialog, "Continuar", "Cerrar");
            }
        }
    }
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DIALOG_INVENTORY:
        {
            if(response)
            {
                if(pTemp(playerid)[pt_POCKETS_PLAYERID] != pTemp(playerid)[pt_POCKETS_SELECTED_PLAYER]) return Y_HOOKS_BREAK_RETURN_1;
                new slot = PlayerTemp[playerid][pt_PLAYER_LISTITEM][listitem];
                switch(slot)
                {
                    case INVENTORY_HEAD: return Y_HOOKS_BREAK_RETURN_1;
                    case INVENTORY_BACK: return Y_HOOKS_BREAK_RETURN_1;
                    case INVENTORY_SLOT_CREW: PC_EmulateCommand(playerid, "/banda");
                    default:
                    {
                        ShowPlayerInventoryOptions(playerid, slot);
                        PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] = slot;
                    }
                }
            }
            return Y_HOOKS_BREAK_RETURN_1;
        }
        case DIALOG_INVENTORY_OPTIONS:
        {
            if(response)
            {
                if(!INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_VALID]) return Y_HOOKS_BREAK_RETURN_0;

                switch(PlayerTemp[playerid][pt_PLAYER_LISTITEM][listitem])
                {
                    case INV_SELECTION_HAND_SAVE:
                    {
                        switch(INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_TYPE])
                        {
                            default:
                            {
                                new slot = GetPlayerFreePocketsSlot(playerid);
                                if(slot == -1) return SendMessage(playerid, "Tus bolsillos estan llenos, no puedes guardar este objeto.");

                                INVENTORY_DATA[playerid][slot][inventory_VALID] = true;
                                INVENTORY_DATA[playerid][slot][inventory_TYPE] = INVENTORY_DATA[playerid][INVENTORY_HAND][inventory_TYPE];
                                INVENTORY_DATA[playerid][slot][inventory_EXTRA] = INVENTORY_DATA[playerid][INVENTORY_HAND][inventory_EXTRA];

                                PlayerTemp[playerid][pt_HAND_POCKET] = -1;
                                RemovePlayerPocketSlot(playerid, INVENTORY_HAND);
                                RemovePlayerHandObject(playerid);
                                InserPlayerPocketData(playerid, slot);

                                SendMessagef(playerid, "Has guardado tu ~r~%s.", INVENTORY_ITEMS_DATA[ INVENTORY_DATA[playerid][slot][inventory_TYPE] ][inv_NAME]);
                            }
                        }
                    }
                    case INV_SELECTION_USE:
                    {
                        if(PlayerTemp[playerid][pt_HAND_POCKET] != -1 && INVENTORY_DATA[playerid][INVENTORY_HAND][inventory_VALID]) return SendMessage(playerid, "Ya tienes un objeto en la mano.");

                        switch(INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_TYPE])
                        {
                            default:
                            {
                                INVENTORY_DATA[playerid][INVENTORY_HAND][inventory_VALID] = true;
                                INVENTORY_DATA[playerid][INVENTORY_HAND][inventory_TYPE] = INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_TYPE];
                                INVENTORY_DATA[playerid][INVENTORY_HAND][inventory_EXTRA] = INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_EXTRA];

                                RemovePlayerPocketSlot(playerid, PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT]);
                                SetPlayerHandObject(playerid);
                                InserPlayerPocketData(playerid, INVENTORY_HAND);

                                SendMessagef(playerid, "Has sacado tu ~g~%s.", INVENTORY_ITEMS_DATA[ INVENTORY_DATA[playerid][INVENTORY_HAND][inventory_TYPE] ][inv_NAME]);
                                Auto_SendPlayerAction(playerid, "saca algo de sus bolsillos.");

                                if(INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_TYPE] == INVENTORY_TYPE_SNACKS || INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_TYPE] == INVENTORY_TYPE_WATER_BOTTLE)
                                {
                                    SendMessage(playerid, "Pulsa ~y~Y~w~ para consumir.");
                                }
                            }
                        }
                    }
                    case INV_SELECTION_GIVE:
                    {
                        if(PlayerTemp[playerid][pt_HAND_POCKET] == -1 && !INVENTORY_DATA[playerid][INVENTORY_HAND][inventory_VALID]) return SendMessage(playerid, "No tienes nada en tus manos.");

                        new dialog[445];
                        switch(INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_TYPE])
                        {
                            default:
                            {
                                format(
                                    dialog, 445, 
                                    
                                    "\
                                        {d1d1d1}Escribe la ID del jugador cercano ati para poder darle tu(s) {"#GREEN_COLOR"}%s{d1d1d1}.\n\
                                        \n\
                                        {d1d1d1}Jugadores Cercanos:\n\
                                    ",
                                        INVENTORY_ITEMS_DATA[ INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_TYPE] ][inv_NAME]
                                );

                                new Players_Count = 0, Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
	                            GetPlayerPos(playerid, oldposx, oldposy, oldposz);

                                LoopEx(i, MAX_PLAYERS, 0)
                                {
                                    if(!IsPlayerConnected(i)) continue;
                                    if(!pTemp(i)[pt_USER_LOGGED]) continue;
                                    if(GetPlayerVirtualWorld(i) != current_vw) continue;
                                    if(GetPlayerInterior(i) != current_int) continue;
                                    if(i == playerid) continue;

                                    if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
                                    {
                                        new line_str[145 + 24 + 4]; //string + name + id
                                        format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {000000}[{ffffff}ID: %d{000000}]\n", PlayerTemp[i][pt_NAME], i);
                                        strcat(dialog, line_str);

                                        Players_Count ++;
                                    }
                                }

                                if(Players_Count <= 0)
                                {
                                    SendMessage(playerid, "No hay jugadores cerca.");
                                    return Y_HOOKS_BREAK_RETURN_1;
                                }

                                ShowPlayerDialog(playerid, DIALOG_INVENTORY_OPTIONS_EXTRA, DIALOG_STYLE_INPUT, "{"#GREEN_COLOR"}Dar {ffffff}- Seleccionar Jugador", dialog, "Continuar", "Cancelar");
                            }
                        }
                    }
                }
            }
            return Y_HOOKS_BREAK_RETURN_1;
        }
        case DIALOG_INVENTORY_OPTIONS_EXTRA:
        {
            if(response)
            {
                switch(INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_TYPE])
                {
                    default:
                    {
                        new id;
                        if(sscanf(inputtext, "d", id))
                        {
                            SendMessage(playerid, "Parametros incorrectos.");
                            return Y_HOOKS_BREAK_RETURN_1;
                        }

                        PlayerTemp[playerid][pt_INVENTORY_DATA_EXTRA] = id;
                        
                        new dialog[445];
                        format(dialog, 445, 
                            "\
                                {d1d1d1}Actualmente tienes %d %s en tu inventario\n\
                                \n\
                                {d1d1d1}Escribe la cantidad que quieres darle a %s:\
                            ",
                                INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_EXTRA], 
                                INVENTORY_ITEMS_DATA[ INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_TYPE] ][inv_NAME],
                                PlayerTemp[ PlayerTemp[playerid][pt_INVENTORY_DATA_EXTRA] ][pt_NAME]
                        );

                        ShowPlayerDialog(playerid, DIALOG_INVENTORY_EXTRA_INFO, DIALOG_STYLE_INPUT, "{"#GREEN_COLOR"}Dar {ffffff}- Seleccionar Cantidad", dialog, "Continuar", "Cancelar");
                    }
                }
            }
            return Y_HOOKS_BREAK_RETURN_1;
        }
        case DIALOG_INVENTORY_EXTRA_INFO:
        {
            if(response)
            {
                switch(INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_TYPE])
                {
                    default:
                    {
                        new value;
                        if(sscanf(inputtext, "d", value))
                        {
                            SendMessage(playerid, "Parametros incorrectos.");
                            return Y_HOOKS_BREAK_RETURN_1;
                        }
                        if(value <= 0)
                        {
                            SendMessage(playerid, "Debes introducir una cantidad mayor que 0.");
                            return Y_HOOKS_BREAK_RETURN_1;
                        }

                        if(!IsPlayerConnected(PlayerTemp[playerid][pt_INVENTORY_DATA_EXTRA]))
                        {
                            SendMessage(playerid, "El jugador esta desconectado.");
                            return Y_HOOKS_BREAK_RETURN_1;
                        }

                        new Float:oldposx, Float:oldposy, Float:oldposz;
	                    GetPlayerPos(playerid, oldposx, oldposy, oldposz);
                        if(!IsPlayerInRangeOfPoint(PlayerTemp[playerid][pt_INVENTORY_DATA_EXTRA], 4.0, oldposx, oldposy, oldposz))
                        {
                            SendMessage(playerid, "El jugador ya no esta cerca.");
                            return Y_HOOKS_BREAK_RETURN_1;
                        }
                        
                        if(PlayerTemp[ PlayerTemp[playerid][pt_INVENTORY_DATA_EXTRA] ][pt_HAND_POCKET] != -1)
                        {
                            SendMessage(playerid, "El jugador no puede recibir nada debido a que tiene algo en su mano.");
                            return Y_HOOKS_BREAK_RETURN_1;
                        }

                        if(INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_EXTRA] < value)
                        {
                            SendMessage(playerid, "No tienes esa cantidad.");
                            return Y_HOOKS_BREAK_RETURN_1;
                        }

                        INVENTORY_DATA[ PlayerTemp[playerid][pt_INVENTORY_DATA_EXTRA] ][INVENTORY_HAND][inventory_VALID] = true;
                        INVENTORY_DATA[ PlayerTemp[playerid][pt_INVENTORY_DATA_EXTRA] ][INVENTORY_HAND][inventory_TYPE] = INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_TYPE];
                        
                        INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_EXTRA] -= value;
                        INVENTORY_DATA[ PlayerTemp[playerid][pt_INVENTORY_DATA_EXTRA] ][INVENTORY_HAND][inventory_EXTRA] = value;
                    
                        if(INVENTORY_DATA[playerid][ PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT] ][inventory_EXTRA] <= 0)
                        {
                            PlayerTemp[playerid][pt_HAND_POCKET] = -1;
                            RemovePlayerPocketSlot(playerid, PlayerTemp[playerid][pt_SELECTED_POCKET_SLOT]);
                            RemovePlayerHandObject(playerid);
                        }
                        SetPlayerHandObject(PlayerTemp[playerid][pt_INVENTORY_DATA_EXTRA]);
                        InserPlayerPocketData(PlayerTemp[playerid][pt_INVENTORY_DATA_EXTRA], INVENTORY_HAND);

                        new action[445]; format(action, 445, "le da algo a %s.", PlayerTemp[ PlayerTemp[playerid][pt_INVENTORY_DATA_EXTRA] ][pt_NAME]);
                        Auto_SendPlayerAction(playerid, action);

                        SendMessagef(PlayerTemp[playerid][pt_INVENTORY_DATA_EXTRA], "%s te ha dado %d %s.", PlayerTemp[playerid][pt_NAME], INVENTORY_DATA[ PlayerTemp[playerid][pt_INVENTORY_DATA_EXTRA] ][INVENTORY_HAND][inventory_EXTRA], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[ PlayerTemp[playerid][pt_INVENTORY_DATA_EXTRA] ][INVENTORY_HAND][inventory_TYPE] ][inv_NAME]);
                    }
                }
            }
            return Y_HOOKS_BREAK_RETURN_1;
        }
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_NO)
    {
        ShowPlayerPockets(playerid, playerid);
    }
    else if(newkeys & KEY_YES)
    {
        if(PlayerTemp[playerid][pt_HAND_POCKET] != -1)
        {
            new index = GetPlayerPocketIndexByID(playerid, PlayerTemp[playerid][pt_HAND_POCKET]);

            switch(INVENTORY_DATA[playerid][index][inventory_TYPE])
            {
                case INVENTORY_TYPE_SNACKS, INVENTORY_TYPE_WATER_BOTTLE:
                {
                    INVENTORY_DATA[playerid][index][inventory_EXTRA] --;
                    
                    Add_Hungry_Thirst(playerid, INVENTORY_ITEMS_DATA[ INVENTORY_DATA[playerid][index][inventory_TYPE] ][inv_HUNGRY], INVENTORY_ITEMS_DATA[ INVENTORY_DATA[playerid][index][inventory_TYPE] ][inv_THIRST]);
                    ShowPlayerHudInfo(playerid, 3);

                    ApplyAnimation(playerid, "FOOD", "EAT_Pizza", 0, 0, 0, 0, 0, 0);
					ApplyAnimation(playerid, "FOOD", "EAT_Pizza", 4.1, false, true, true, false, 1000);

                    new action[445]; format(action, 445, "consume %s.", INVENTORY_ITEMS_DATA[ INVENTORY_DATA[playerid][index][inventory_TYPE] ][inv_NAME]);
                    Auto_SendPlayerAction(playerid, action);

                    SendMessagef(playerid, "Has consumido ~b~%s~w~.", INVENTORY_ITEMS_DATA[ INVENTORY_DATA[playerid][index][inventory_TYPE] ][inv_NAME]);
                
                    if(INVENTORY_DATA[playerid][index][inventory_EXTRA] <= 0)
                    {
                        SendMessagef(playerid, "Ya no te queda mas ~r~%s~w~.", INVENTORY_ITEMS_DATA[ INVENTORY_DATA[playerid][index][inventory_TYPE] ][inv_NAME]);
                        RemovePlayerPocketSlot(playerid, index);
                        RemovePlayerHandObject(playerid);
                        PlayerTemp[playerid][pt_HAND_POCKET] = -1;
                    }
                    else
                    {
                        mysql_format(handle_db, QUERY_BUFFER, sizeof QUERY_BUFFER, "UPDATE pinventory SET extra = %d WHERE id = %d;", INVENTORY_DATA[playerid][index][inventory_EXTRA], INVENTORY_DATA[playerid][index][inventory_ID]);
                        mysql_tquery(handle_db, QUERY_BUFFER);
                    }
                }
            }
            return Y_HOOKS_BREAK_RETURN_1;
        }
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}

hook OnPlayerSpawn(playerid)
{
    if(PlayerTemp[playerid][pt_HAND_POCKET] != -1)
    {
        SetPlayerHandObject(playerid);
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}