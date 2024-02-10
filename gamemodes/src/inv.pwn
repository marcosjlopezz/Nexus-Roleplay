#include <YSI-Includes\YSI\y_hooks>

/* 
    -- pTEMP
    pt_INVENTORY_SELECTED_PLAYER
	pt_INVENTORY_PLAYERID
	pt_INVENTORY_POCKET_TYPE
	pt_INVENTORY_POCKET_EXTRA_0
	pt_INVENTORY_POCKET_EXTRA_1
	Float:pt_INVENTORY_POCKET_EXTRA_2
	Float:pt_INVENTORY_POCKET_EXTRA_3

    -- Dialogs
    DIALOG_INVENTORY
	DIALOG_PLAYER_WEAPONS
	DIALOG_PLAYER_WEAPONS_OPTIONS
	DIALOG_PLAYER_WEAPONS_DELETE_A
	DIALOG_PLAYER_WEAPONS_DELETE
	DIALOG_PLAYER_POCKET
	DIALOG_PLAYER_POCKET_OPTIONS
	DIALOG_PLAYER_POCKET_DELETE_ALL
	DIALOG_PLAYER_POCKETS
	DIALOG_PLAYER_POCKETS_OPTION
	DIALOG_POCKETS_OPTION
*/

stock ShowPlayerInventoryMenu(playerid, pid)
{
    if(PI[playerid][pSTATE] == ROLEPLAY_STATE_CRACK || PI[playerid][pSTATE] == ROLEPLAY_STATE_JAIL || PI[playerid][pSTATE] == ROLEPLAY_STATE_ARRESTED) return 1;

    pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER] = pid;
    pTemp(playerid)[pt_INVENTORY_PLAYERID] = playerid;

    new caption[445], dialog[445];

    format(caption, sizeof(caption), "Inventario de %s.", pTemp(pid)[pt_NAME]);

    strcat(dialog, "{d1d1d1}Mano\n");
    strcat(dialog, "{d1d1d1}Bolsillos\n");
    strcat(dialog, "{d1d1d1}Consumibles\n");
    strcat(dialog, "{d1d1d1}Accesorios\n");
    strcat(dialog, "{d1d1d1}Armas\n");

    ShowPlayerDialog(playerid, DIALOG_INVENTORY, DIALOG_STYLE_TABLIST, caption, dialog, "Continuar", "Cerrar");
    return 1;
}

#define f_pocket dialog, sizeof dialog
stock ShowPlayerPocketOptions(playerid, opt) //DIALOG_PLAYER_POCKETS_OPTION
{
	new dialog[445];
	LoopEx(i, 445, 0) dialog[i] = 0;

	switch(opt)
	{
		case INVENTORY_TYPE_CASH: format(f_pocket, "Dar\n");
		case INVENTORY_TYPE_DRIVE_LICENCE: format(f_pocket, "Mostrar\n");
		case INVENTORY_TYPE_PHONE: format(f_pocket, "Usar\nMostrar Numero\n");
		case INVENTORY_TYPE_GPS: PC_EmulateCommand(playerid, "/gps");
		default: return 0;
	}

	if(!isnull(dialog)) ShowPlayerDialog(playerid, DIALOG_PLAYER_POCKETS_OPTION, DIALOG_STYLE_TABLIST, "Inventario - Usar", dialog, "Continuar", "Atras");
	return 1;
}

stock ShowPlayerPocketOption(playerid, opt, extra)
{
	new dialog[445], line_str[445];
	switch(opt)
	{
		case INVENTORY_TYPE_CASH:
		{
			switch(extra)
			{
				case 0:
				{
					format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres darle dinero, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 4 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

					new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
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
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);
						}
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
					return 1;
				}
			}
		}
		case INVENTORY_TYPE_DRIVE_LICENCE:
		{
			switch(extra)
			{
				case 0:
				{
					format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres mostrarle la licencia de conduccion, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 2 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

					new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
					GetPlayerPos(playerid, oldposx, oldposy, oldposz);

					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;

						if(IsPlayerInRangeOfPoint(i, 2.0, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);
						}
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
					return 1;
				}
			}
		}
		case INVENTORY_TYPE_PHONE:
		{
			switch(extra)
			{
				case 0:
				{
					PC_EmulateCommand(playerid, "/movil");
				}
				case 1:
				{
					format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres mostrarle tu numero telefonico, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 2 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

					new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
					GetPlayerPos(playerid, oldposx, oldposy, oldposz);

					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;

						if(IsPlayerInRangeOfPoint(i, 2.0, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);
						}
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
					return 1;
				}
			}
		}
		default: return 0;
	}
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
			if(response)
			{
				switch(listitem)
				{
					case 0: return Y_HOOKS_BREAK_RETURN_1;
					case 1: ShowPlayerInventory(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
					case 2: ShowDialog(playerid, DIALOG_PLAYER_POCKET);
					case 3: ShowDialog(playerid, DIALOG_PLAYER_TOYS);
					case 4: ShowDialog(playerid, DIALOG_PLAYER_WEAPONS);
					default: ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
				}
			}
			return Y_HOOKS_BREAK_RETURN_1;
        }
		case DIALOG_PLAYER_POCKETS:
		{
			if(response)
			{
				if(pTemp(playerid)[pt_INVENTORY_PLAYERID] != pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
				
				pTemp(playerid)[pt_INVENTORY_POCKET_TYPE] = listitem;

				switch(pTemp(playerid)[pt_INVENTORY_POCKET_TYPE])
				{
					case INVENTORY_TYPE_CASH:
					{
						if(PI[playerid][pCASH] <= 0) return SendMessage(playerid, "No tienes dinero.");
					}
					case INVENTORY_TYPE_DRIVE_LICENCE:
					{
						if(PI[playerid][pDRIVE_LICENSE_POINTS] == 0) return SendMessage(playerid, "No tienes una licencia de conduccion.");
					}
					case INVENTORY_TYPE_PHONE:
					{
						if(!PI[playerid][pPHONE_NUMBER]) return SendMessage(playerid, "No tienes un telefono movil.");
					}
				}

				ShowPlayerPocketOptions(playerid, listitem);
			}
			else ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
			return Y_HOOKS_BREAK_RETURN_1;
		}
		case DIALOG_PLAYER_POCKETS_OPTION:
		{
			if(response)
			{
				if(pTemp(playerid)[pt_INVENTORY_PLAYERID] != pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
				
				pTemp(playerid)[pt_INVENTORY_POCKET_OPTION] = listitem;
				ShowPlayerPocketOption(playerid, pTemp(playerid)[pt_INVENTORY_POCKET_TYPE], listitem);
			}
			else ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
			return Y_HOOKS_BREAK_RETURN_1;
		}
		case DIALOG_POCKETS_OPTION:
		{
			if(response)
			{
				if(pTemp(playerid)[pt_INVENTORY_PLAYERID] != pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
				
				switch(pTemp(playerid)[pt_INVENTORY_POCKET_TYPE])
				{
					case INVENTORY_TYPE_CASH:
					{
						switch(pTemp(playerid)[pt_INVENTORY_POCKET_OPTION])
						{
							case 0:
							{
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = strval(inputtext);

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
								if(PI[playerid][pSTATE] == ROLEPLAY_STATE_JAIL || PI[playerid][pSTATE] == ROLEPLAY_STATE_ARRESTED) return SendMessage(playerid, "Ahora no puedes usar esta funcion.");
								if(PI[playerid][pLEVEL] < 2) return SendMessage(playerid, "Debes ser al menos nivel 2 para dar dinero.");
								
								if(!IsPlayerConnected(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0])) return SendMessage(playerid, "El jugador no está conectado.");
								new Float:pos[3]; GetPlayerPos(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pos[0], pos[1], pos[2]);
								if(!IsPlayerInRangeOfPoint(playerid, NEARS_PLAYERS_DISTANCE, pos[0], pos[1], pos[2])) return SendMessage(playerid, "Este jugador no está cerca tuya.");
								if(PLAYER_TEMP[pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]][pt_GAME_STATE] != GAME_STATE_NORMAL) return SendMessage(playerid, "No puedes darle nada a este jugador ahora.");

								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA, DIALOG_STYLE_INPUT, "Inventario - Cantida de dinero", "{d1d1d1}Escribe la cantidad de dinero que quieres dar:", "Confirmar", "Cancelar");
							}
						}
					}
					case INVENTORY_TYPE_DRIVE_LICENCE:
					{
						switch(pTemp(playerid)[pt_INVENTORY_POCKET_OPTION])
						{
							case 0:
							{
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = strval(inputtext);

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
								if(!IsPlayerConnected(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0])) return SendMessage(playerid, "El jugador no está conectado.");
								new Float:pos[3]; GetPlayerPos(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pos[0], pos[1], pos[2]);
								if(!IsPlayerInRangeOfPoint(playerid, 2.0, pos[0], pos[1], pos[2])) return SendMessage(playerid, "Este jugador no está cerca tuya.");
							
								new cmd[445]; format(cmd, 445, "/licencia %d", pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]);
								PC_EmulateCommand(playerid, cmd);
							}
						}
					}
					case INVENTORY_TYPE_PHONE:
					{
						switch(pTemp(playerid)[pt_INVENTORY_POCKET_OPTION])
						{
							case 0: PC_EmulateCommand(playerid, "/movil"); //ineccesario pero por si acaso 
							case 1:
							{
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = strval(inputtext);

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
								if(!IsPlayerConnected(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0])) return SendMessage(playerid, "El jugador no está conectado.");
								new Float:pos[3]; GetPlayerPos(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pos[0], pos[1], pos[2]);
								if(!IsPlayerInRangeOfPoint(playerid, 2.0, pos[0], pos[1], pos[2])) return SendMessage(playerid, "Este jugador no está cerca tuya.");
							
								SendClientMessagef(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], -1, "{ffffff}el jugador {"#GREEN_COLOR"}%s{ffffff} te ha mostrado su numero telefonico: {"#GOLD_COLOR"}%d.", pTemp(playerid)[pt_NAME], PI[playerid][pPHONE_NUMBER]);
								
								new action[445];
								format(action, sizeof action, "le muestra su numero telefonico a %s.", PLAYER_TEMP[pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]][pt_NAME]);
								Auto_SendPlayerAction(playerid, action);
							}
						}
					}
				}
			}
			else ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
			return Y_HOOKS_BREAK_RETURN_1;
		}
		case DIALOG_POCKETS_EXTRA:
		{
			if(response)
			{
				if(pTemp(playerid)[pt_INVENTORY_PLAYERID] != pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
				
				switch(pTemp(playerid)[pt_INVENTORY_POCKET_TYPE])
				{
					case INVENTORY_TYPE_CASH:
					{
						new cmd[1024]; 
						format(cmd, sizeof cmd, "/dar dinero %d %d", pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], strval(inputtext));
						PC_EmulateCommand(playerid, cmd);
					}
				}
			}
			else ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
			return Y_HOOKS_BREAK_RETURN_1;
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