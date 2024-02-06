#include <YSI-Includes\YSI\y_hooks>

/* 
    -- pTEMP
    pt_INVENTORY_SELECTED_PLAYER
	pt_INVENTORY_PLAYERID

    -- Dialogs
    DIALOG_INVENTORY
	DIALOG_PLAYER_WEAPONS
	DIALOG_PLAYER_WEAPONS_OPTIONS
	DIALOG_PLAYER_WEAPONS_DELETE_A
	DIALOG_PLAYER_WEAPONS_DELETE
	DIALOG_PLAYER_POCKET
	DIALOG_PLAYER_POCKET_OPTIONS
	DIALOG_PLAYER_POCKET_DELETE_ALL
*/

stock ShowPlayerInventoryMenu(playerid, pid)
{
    if(PI[playerid][pSTATE] == ROLEPLAY_STATE_CRACK || PI[playerid][pSTATE] == ROLEPLAY_STATE_JAIL || PI[playerid][pSTATE] == ROLEPLAY_STATE_ARRESTED) return 1;

    new caption[445], dialog[445];

    format(caption, sizeof(caption), "Inventario de %s.", pTemp(pid)[pt_NAME]);

    strcat(dialog, "{d1d1d1}Mano\n");
    strcat(dialog, "{d1d1d1}Bolsillos\n");
    strcat(dialog, "{d1d1d1}Consumibles\n");
    strcat(dialog, "{d1d1d1}Accesorios\n");
    strcat(dialog, "{d1d1d1}Armas\n");
    strcat(dialog, "{d1d1d1}Telefono\n");
    
    pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER] = pid;
    pTemp(playerid)[pt_INVENTORY_PLAYERID] = playerid;

    ShowPlayerDialog(playerid, DIALOG_INVENTORY, DIALOG_STYLE_TABLIST, caption, dialog, "Continuar", "Cerrar");
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_NO)
    {
        ShowPlayerInventoryMenu(playerid, playerid);
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DIALOG_INVENTORY:
        {
            switch(listitem)
            {
                case 0: return Y_HOOKS_BREAK_RETURN_1;
                case 1: return Y_HOOKS_BREAK_RETURN_1;
                case 2: ShowDialog(playerid, DIALOG_PLAYER_POCKET);
                case 3: ShowDialog(playerid, DIALOG_PLAYER_TOYS);
                case 4: ShowDialog(playerid, DIALOG_PLAYER_WEAPONS);
                case 5:
                {
                    if(pTemp(playerid)[pt_INVENTORY_PLAYERID] != pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
                    
                    if(!PI[playerid][pPHONE_NUMBER]) return SendMessage(playerid, "No tienes ningun teléfono, puedes ir a cualquier 24/7 para comprar uno.");
                    if(PlayerTemp[playerid][pt_PLAYER_IN_CALL]) return SendMessage(playerid, "Estás en una llamada.");
                    
                    Auto_SendPlayerAction(playerid, "mira su teléfono.");
                    ShowDialog(playerid, DIALOG_PHONE);
                }
            }
        }
		case DIALOG_PLAYER_WEAPONS:
		{
            if(pTemp(playerid)[pt_INVENTORY_PLAYERID] != pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);

			if(response)
			{
				if(PlayerTemp[playerid][pt_PLAYER_LISTITEM][listitem] == -1) return 1;
				
				if(PlayerTemp[playerid][pt_PLAYER_LISTITEM][listitem] == 13 + 20) // Eliminar todo
				{
					ShowDialog(playerid, DIALOG_PLAYER_WEAPONS_DELETE_A);
					return 1;
				}
				
				PlayerTemp[playerid][pt_SELECTED_DIALOG_WEAPON_SLOT] = PlayerTemp[playerid][pt_PLAYER_LISTITEM][listitem];
				ShowDialog(playerid, DIALOG_PLAYER_WEAPONS_OPTIONS);
			}
            else ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
			return Y_HOOKS_BREAK_RETURN_1;
		}
		case DIALOG_PLAYER_TOYS:
		{
            if(pTemp(playerid)[pt_INVENTORY_PLAYERID] != pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);

			if(response)
			{	
				if(listitem == MAX_VIP_TOYS) return ShowDialog(playerid, DIALOG_PLAYER_TOY_DELETE_ALL);
				if(!PI[playerid][pVIP] && listitem >= MAX_NU_TOYS)
				{
					SendClientMessagef(playerid, -1, "¡Los jugadores VIP pueden tener hasta %d accesorios! Usa /ayuda si quieres ser VIP.", MAX_VIP_TOYS);
					ShowDialog(playerid, dialogid);
					return 1;
				}
				
				PlayerTemp[playerid][pt_SELECTED_TOY_SLOT] = listitem;
				ShowDialog(playerid, DIALOG_PLAYER_TOY_MENU);
			}
            else ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
			return Y_HOOKS_BREAK_RETURN_1;
		}
		case DIALOG_PHONE:
		{
			if(pTemp(playerid)[pt_INVENTORY_PLAYERID] != pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
			
			if(response)
			{
				switch(listitem)
				{
					case 0: //Agenda
					{
						if(PI[playerid][pPHONE_STATE] == PHONE_STATE_OFF)
						{
							PI[playerid][pPHONE_STATE] = PHONE_STATE_ON;
							ShowDialog(playerid, dialogid);
							return 1;
						}
						ShowDialog(playerid, DIALOG_PHONE_BOOK);
					}
					case 1: //Llamar
					{
						if(PI[playerid][pPHONE_STATE] == PHONE_STATE_OFF) return SendClientMessagef(playerid, -1, "Tu teléfono está apagado, enciéndelo para usarlo.");
						ShowDialog(playerid, DIALOG_PHONE_CALL_NUMBER);
					}
					case 2: //Enviar mensaje
					{
						if(PI[playerid][pPHONE_STATE] == PHONE_STATE_OFF) return SendClientMessagef(playerid, -1, "Tu teléfono está apagado, enciéndelo para usarlo.");
						ShowDialog(playerid, DIALOG_PHONE_SMS_NUMBER);
					}
					case 3: //Ver mensajes recibidos
					{
						if(PI[playerid][pPHONE_STATE] == PHONE_STATE_OFF) return SendClientMessagef(playerid, -1, "Tu teléfono está apagado, enciéndelo para usarlo.");
						ShowDialog(playerid, DIALOG_PHONE_RECEIVED_MESSAGES);
					}
					case 4: //Ver mensajes enviados
					{
						if(PI[playerid][pPHONE_STATE] == PHONE_STATE_OFF) return SendClientMessagef(playerid, -1, "Tu teléfono está apagado, enciéndelo para usarlo.");
						ShowDialog(playerid, DIALOG_PHONE_SENT_MESSAGES);
					}
					case 5: //Apagar
					{
						if(PI[playerid][pPHONE_STATE] == PHONE_STATE_OFF) return SendClientMessagef(playerid, -1, "Tu teléfono está apagado, enciéndelo para usarlo.");
						
						if(PlayerTemp[playerid][pt_PLAYER_IN_CALL]) EndPhoneCall(playerid);
						PI[playerid][pPHONE_STATE] = PHONE_STATE_OFF;
						SendClientMessagef(playerid, -1, "Has apagado tu teléfono, ahora no recibirás llamadas.");
					}
				}
			}
			else ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
			return Y_HOOKS_BREAK_RETURN_1;
		}
		case DIALOG_PLAYER_POCKET:
		{
            if(pTemp(playerid)[pt_INVENTORY_PLAYERID] != pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);

			if(response)
			{
				if(listitem == MAX_PLAYER_POCKET_OBJECTS) return ShowDialog(playerid, DIALOG_PLAYER_POCKET_DELETE_ALL);
				if(!PLAYER_POCKET[playerid][listitem][player_pocket_VALID])
				{
					SendMessage(playerid, "Este slot está vacío.");
					ShowDialog(playerid, dialogid);
					return 1;
				}
				PLAYER_TEMP[playerid][pt_POCKET_SLOT_SELECTED] = listitem;
				ShowDialog(playerid, DIALOG_PLAYER_POCKET_OPTIONS);
			}
            else ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
			return Y_HOOKS_BREAK_RETURN_1;
		}
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}