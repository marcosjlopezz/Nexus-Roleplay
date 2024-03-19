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
	
	PlayerTemp[playerid][pt_DIALOG_RESPONDED] = false;
	PlayerTemp[playerid][pt_DIALOG_ID] = DIALOG_INVENTORY;

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
		case INVENTORY_TYPE_PHONE_RESOLVER: format(f_pocket, "Buscar un numero\n");
		case INVENTORY_TYPE_MECHANIC_PIECES: format(f_pocket, "Dar\n");
		case INVENTORY_TYPE_FUEL_DRUM: format(f_pocket, "Usar\n");
		case INVENTORY_TYPE_SEED_MEDICINE: format(f_pocket, "Dar\n");
		case INVENTORY_TYPE_SEED_CANNABIS: format(f_pocket, "Dar\n");
		case INVENTORY_TYPE_SEED_CRACK: format(f_pocket, "Dar\n");
		case INVENTORY_TYPE_MEDICINE: format(f_pocket, "Consumir\nDar\nVender");
		case INVENTORY_TYPE_CANNABIS: format(f_pocket, "Consumir\nDar\nVender");
		case INVENTORY_TYPE_CRACK: format(f_pocket, "Consumir\nDar\nVender");
		case INVENTORY_TYPE_MECHANIC_KITS: format(f_pocket, "Reparar vehiculo cercano\nDar");
		case INVENTORY_TYPE_MEDICAL_KITS: format(f_pocket, "Curar\nDar");
		default: return 0;
	}

	if(!isnull(dialog)) ShowPlayerDialog(playerid, DIALOG_PLAYER_POCKETS_OPTION, DIALOG_STYLE_TABLIST, "Inventario - Opción", dialog, "Continuar", "Atras");
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

					new total_players = 0;
					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;
						if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

						if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);

							total_players ++;
						}
					}

					if(total_players <= 0)
					{
						SendMessage(playerid, "No hay jugadores cerca.");
						return 1;
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
				}
			}
			return 1;
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

					new total_players = 0;
					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;
						if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

						if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);

							total_players ++;
						}
					}

					if(total_players <= 0)
					{
						SendMessage(playerid, "No hay jugadores cerca.");
						return 1;
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
				}
			}
			return 1;
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

					new total_players = 0;
					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;
						if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

						if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);

							total_players ++;
						}
					}
					
					if(total_players <= 0)
					{
						SendMessage(playerid, "No hay jugadores cerca.");
						return 1;
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
				}
			}
			return 1;
		}
		case INVENTORY_TYPE_PHONE_RESOLVER:
		{
			switch(extra)
			{
				case 0:
				{
					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", "{d1d1d1}Escribe la ID de la persona para encontrar su numero telefónico en la guía:", "Continuar", "Atras");
				}
			}
			return 1;
		}
		case INVENTORY_TYPE_MECHANIC_PIECES:
		{
			switch(extra)
			{
				case 0:
				{
					format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres darle piezas, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 4 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

					new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
					GetPlayerPos(playerid, oldposx, oldposy, oldposz);

					new total_players = 0;
					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;
						if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

						if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);

							total_players ++;
						}
					}

					if(total_players <= 0)
					{
						SendMessage(playerid, "No hay jugadores cerca.");
						return 1;
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
				}
			}
			return 1;
		}
		case INVENTORY_TYPE_FUEL_DRUM:
		{
			switch(extra)
			{
				case 0:
				{
					if(GetPlayerState(playerid) != PLAYER_STATE_ONFOOT) return SendClientMessagef(playerid, -1, "Tienes que estar fuera del vehículo para vertir el bidon.");
					
					new vehicleid = GetNearVehicle(playerid);
					if(vehicleid == INVALID_VEHICLE_ID) return SendMessage(playerid, "No estás cerca de ningun vehículo.");
					
					if(GLOBAL_VEHICLES[vehicleid][gb_vehicle_PARAMS_ENGINE])
					{
						SendClientMessagef(playerid, -1, "Por favor, para primero el motor del vehículo.");
						return 1;
					}
					if(GLOBAL_VEHICLES[vehicleid][gb_vehicle_MAX_GAS] <= 0.0) return SendClientMessagef(playerid, -1, "Este vehículo no tiene deposito de gasolina.");

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", "Escribe la cantidad de litros que quieres repostar al vehiculo:", "Continuar", "Atras");
				}
			}
		}
		case INVENTORY_TYPE_SEED_MEDICINE:
		{
			switch(extra)
			{
				case 0:
				{
					format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres darle las semillas medicinales, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 4 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

					new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
					GetPlayerPos(playerid, oldposx, oldposy, oldposz);

					new total_players = 0;
					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;
						if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

						if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);

							total_players ++;
						}
					}

					if(total_players <= 0)
					{
						SendMessage(playerid, "No hay jugadores cerca.");
						return 1;
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
				}
			}
		}
		case INVENTORY_TYPE_SEED_CANNABIS:
		{
			switch(extra)
			{
				case 0:
				{
					format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres darle las semillas de marihuana, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 4 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

					new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
					GetPlayerPos(playerid, oldposx, oldposy, oldposz);

					new total_players = 0;
					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;
						if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

						if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);

							total_players ++;
						}
					}

					if(total_players <= 0)
					{
						SendMessage(playerid, "No hay jugadores cerca.");
						return 1;
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
				}
			}
		}
		case INVENTORY_TYPE_SEED_CRACK:
		{
			switch(extra)
			{
				case 0:
				{
					format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres darle las semillas de coca, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 4 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

					new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
					GetPlayerPos(playerid, oldposx, oldposy, oldposz);

					new total_players = 0;
					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;
						if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

						if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);

							total_players ++;
						}
					}

					if(total_players <= 0)
					{
						SendMessage(playerid, "No hay jugadores cerca.");
						return 1;
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
				}
			}
		}
		case INVENTORY_TYPE_MEDICINE:
		{
			switch(extra)
			{
				case 0:
				{
					PC_EmulateCommand(playerid, "/consumir medicamento");
				}
				case 1:
				{
					format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres darle los medicamentos, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 4 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

					new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
					GetPlayerPos(playerid, oldposx, oldposy, oldposz);

					new total_players = 0;
					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;
						if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

						if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);

							total_players ++;
						}
					}

					if(total_players <= 0)
					{
						SendMessage(playerid, "No hay jugadores cerca.");
						return 1;
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
				}
				case 3:
				{
					format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres venderle los medicamentos, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 4 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

					new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
					GetPlayerPos(playerid, oldposx, oldposy, oldposz);

					new total_players = 0;
					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;
						if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

						if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);

							total_players ++;
						}
					}

					if(total_players <= 0)
					{
						SendMessage(playerid, "No hay jugadores cerca.");
						return 1;
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
				}
			}
		}
		case INVENTORY_TYPE_CANNABIS:
		{
			switch(extra)
			{
				case 0:
				{
					PC_EmulateCommand(playerid, "/consumir marihuana");
				}
				case 1:
				{
					format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres darle marihuana, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 4 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

					new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
					GetPlayerPos(playerid, oldposx, oldposy, oldposz);

					new total_players = 0;
					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;
						if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

						if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);

							total_players ++;
						}
					}

					if(total_players <= 0)
					{
						SendMessage(playerid, "No hay jugadores cerca.");
						return 1;
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
				}
				case 3:
				{
					format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres venderle marihuana, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 4 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

					new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
					GetPlayerPos(playerid, oldposx, oldposy, oldposz);

					new total_players = 0;
					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;
						if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

						if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);

							total_players ++;
						}
					}

					if(total_players <= 0)
					{
						SendMessage(playerid, "No hay jugadores cerca.");
						return 1;
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
				}
			}
		}
		case INVENTORY_TYPE_CRACK:
		{
			switch(extra)
			{
				case 0:
				{
					PC_EmulateCommand(playerid, "/consumir crack");
				}
				case 1:
				{
					format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres darle crack, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 4 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

					new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
					GetPlayerPos(playerid, oldposx, oldposy, oldposz);

					new total_players = 0;
					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;
						if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

						if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);

							total_players ++;
						}
					}

					if(total_players <= 0)
					{
						SendMessage(playerid, "No hay jugadores cerca.");
						return 1;
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
				}
				case 3:
				{
					format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres venderle crack, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 4 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

					new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
					GetPlayerPos(playerid, oldposx, oldposy, oldposz);

					new total_players = 0;
					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;
						if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

						if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);

							total_players ++;
						}
					}

					if(total_players <= 0)
					{
						SendMessage(playerid, "No hay jugadores cerca.");
						return 1;
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
				}
			}
		}
		case INVENTORY_TYPE_MECHANIC_KITS:
		{
			switch(extra)
			{
				case 0:
				{
					PC_EmulateCommand(playerid, "/reparar");
				}
				case 1:
				{
					format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres darle kits de reparacion, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 4 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

					new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
					GetPlayerPos(playerid, oldposx, oldposy, oldposz);

					new total_players = 0;
					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;
						if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

						if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);

							total_players ++;
						}
					}

					if(total_players <= 0)
					{
						SendMessage(playerid, "No hay jugadores cerca.");
						return 1;
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
				}
			}
		}
		case INVENTORY_TYPE_MEDICAL_KITS:
		{
			switch(extra)
			{
				case 0:
				{
					format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres curar, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 4 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

					new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
					GetPlayerPos(playerid, oldposx, oldposy, oldposz);

					new total_players = 0;
					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;
						if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

						if(IsPlayerInRangeOfPoint(i, NEARS_PLAYERS_DISTANCE, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);

							total_players ++;
						}
					}

					if(total_players <= 0)
					{
						SendMessage(playerid, "No hay jugadores cerca.");
						return 1;
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
				}
				case 1:
				{
					format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres darle botiquines, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 4 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

					new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
					GetPlayerPos(playerid, oldposx, oldposy, oldposz);

					new total_players = 0;
					LoopEx(i, MAX_PLAYERS, 0)
					{
						if(!IsPlayerConnected(i)) continue;
						if(!pTemp(i)[pt_USER_LOGGED]) continue;
						if(GetPlayerVirtualWorld(i) != current_vw) continue;
						if(GetPlayerInterior(i) != current_int) continue;
						if(i == playerid) continue;
						if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

						if(IsPlayerInRangeOfPoint(i, NEARS_PLAYERS_DISTANCE, oldposx, oldposy, oldposz))
						{
							format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
							strcat(dialog, line_str);

							total_players ++;
						}
					}

					if(total_players <= 0)
					{
						SendMessage(playerid, "No hay jugadores cerca.");
						return 1;
					}

					ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
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
					case INVENTORY_TYPE_CASH: if(PI[playerid][pCASH] <= 0) return SendMessage(playerid, "No tienes dinero.");
					case INVENTORY_TYPE_DRIVE_LICENCE: if(PI[playerid][pDRIVE_LICENSE_POINTS] == 0) return SendMessage(playerid, "No tienes una licencia de conduccion.");
					case INVENTORY_TYPE_PHONE: if(!PI[playerid][pPHONE_NUMBER]) return SendMessage(playerid, "No tienes un telefono movil.");
					case INVENTORY_TYPE_PHONE_RESOLVER: if(!PI[playerid][pPHONE_RESOLVER]) return SendMessage(playerid, "No tienes una guía telefonica, puedes ir a cualquier 24/7 para comprar una.");
					case INVENTORY_TYPE_MECHANIC_PIECES: if(PI[playerid][pMECHANIC_PIECES] <= 0) return SendMessage(playerid, "No tienes piezas.");
					case INVENTORY_TYPE_FUEL_DRUM: if(PI[playerid][pFUEL_DRUM] <= 0) return SendMessage(playerid, "No tienes gasolina en el bidon.");
					case INVENTORY_TYPE_SEED_MEDICINE: if(PI[playerid][pSEED_MEDICINE] <= 0) return SendMessage(playerid, "No tienes semillas.");
					case INVENTORY_TYPE_SEED_CANNABIS: if(PI[playerid][pSEED_CANNABIS] <= 0) return SendMessage(playerid, "No tienes semillas.");
					case INVENTORY_TYPE_SEED_CRACK: if(PI[playerid][pSEED_CRACK] <= 0) return SendMessage(playerid, "No tienes semillas.");
					case INVENTORY_TYPE_MEDICINE: if(PI[playerid][pMEDICINE] <= 0) return SendMessage(playerid, "No tienes medicamentos.");
					case INVENTORY_TYPE_CANNABIS: if(PI[playerid][pCANNABIS] <= 0) return SendMessage(playerid, "No tienes marihuana.");
					case INVENTORY_TYPE_CRACK: if(PI[playerid][pCRACK] <= 0) return SendMessage(playerid, "No tienes crack.");
					case INVENTORY_TYPE_MECHANIC_KITS: if(PI[playerid][pMECHANIC_KITS] <= 0) return SendMessage(playerid, "No tienes kits de reparacion.");
					case INVENTORY_TYPE_MEDICAL_KITS: if(PI[playerid][pMEDICAL_KITS] <= 0) return SendMessage(playerid, "No tienes botiquines.");
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
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
								
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
								if(PI[playerid][pSTATE] == ROLEPLAY_STATE_JAIL || PI[playerid][pSTATE] == ROLEPLAY_STATE_ARRESTED) return SendMessage(playerid, "Ahora no puedes usar esta funcion.");
								if(PI[playerid][pLEVEL] < 2) return SendMessage(playerid, "Debes ser al menos nivel 2 para dar dinero.");
								
								if(!IsPlayerConnected(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0])) return SendMessage(playerid, "El jugador no está conectado.");
								new Float:pos[3]; GetPlayerPos(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pos[0], pos[1], pos[2]);
								if(!IsPlayerInRangeOfPoint(playerid, NEARS_PLAYERS_DISTANCE, pos[0], pos[1], pos[2])) return SendMessage(playerid, "Este jugador no está cerca tuya.");
								if(PLAYER_TEMP[pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]][pt_GAME_STATE] != GAME_STATE_NORMAL) return SendMessage(playerid, "No puedes interactuar con este jugador ahora.");

								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA, DIALOG_STYLE_INPUT, "Inventario - Cantidad de dinero", "{d1d1d1}Escribe la cantidad de dinero que quieres dar:", "Confirmar", "Cancelar");
							}
						}
					}
					case INVENTORY_TYPE_DRIVE_LICENCE:
					{
						switch(pTemp(playerid)[pt_INVENTORY_POCKET_OPTION])
						{
							case 0:
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
								
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;

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
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
								
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;

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
					case INVENTORY_TYPE_PHONE_RESOLVER:
					{
						switch(pTemp(playerid)[pt_INVENTORY_POCKET_OPTION])
						{
							case 0:
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
								
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);

								new cmd[445]; format(cmd, 445, "/guia %d", pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]);
								PC_EmulateCommand(playerid, cmd);
							}
						}
					}
					case INVENTORY_TYPE_MECHANIC_PIECES:
					{
						switch(pTemp(playerid)[pt_INVENTORY_POCKET_OPTION])
						{
							case 0:
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
								
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
								if(PI[playerid][pSTATE] == ROLEPLAY_STATE_JAIL || PI[playerid][pSTATE] == ROLEPLAY_STATE_ARRESTED) return SendMessage(playerid, "Ahora no puedes usar esta funcion.");
								if(PI[playerid][pLEVEL] < 2) return SendMessage(playerid, "Debes ser al menos nivel 2 para dar piezas.");
								
								if(!IsPlayerConnected(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0])) return SendMessage(playerid, "El jugador no está conectado.");
								new Float:pos[3]; GetPlayerPos(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pos[0], pos[1], pos[2]);
								if(!IsPlayerInRangeOfPoint(playerid, NEARS_PLAYERS_DISTANCE, pos[0], pos[1], pos[2])) return SendMessage(playerid, "Este jugador no está cerca tuya.");
								if(PLAYER_TEMP[pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]][pt_GAME_STATE] != GAME_STATE_NORMAL) return SendMessage(playerid, "No puedes interactuar con este jugador ahora.");

								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA, DIALOG_STYLE_INPUT, "Inventario - Cantidad de piezas", "{d1d1d1}Escribe la cantidad de piezas que quieres dar:", "Confirmar", "Cancelar");
							}
						}
					}
					case INVENTORY_TYPE_FUEL_DRUM:
					{
						switch(pTemp(playerid)[pt_INVENTORY_POCKET_OPTION])
						{
							case 0:
							{
								new amount;
								if(sscanf(inputtext, "d", amount)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
								
								new cmd[445]; format(cmd, 445, "/vertir %d", amount);
								PC_EmulateCommand(playerid, cmd);
							}
						}
					}
					case INVENTORY_TYPE_SEED_MEDICINE:
					{
						switch(pTemp(playerid)[pt_INVENTORY_POCKET_OPTION])
						{
							case 0:
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
								
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
								if(PI[playerid][pSTATE] == ROLEPLAY_STATE_JAIL || PI[playerid][pSTATE] == ROLEPLAY_STATE_ARRESTED) return SendMessage(playerid, "Ahora no puedes usar esta funcion.");
								if(PI[playerid][pLEVEL] < 2) return SendMessage(playerid, "Debes ser al menos nivel 2 para dar semillas.");
								
								if(!IsPlayerConnected(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0])) return SendMessage(playerid, "El jugador no está conectado.");
								new Float:pos[3]; GetPlayerPos(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pos[0], pos[1], pos[2]);
								if(!IsPlayerInRangeOfPoint(playerid, NEARS_PLAYERS_DISTANCE, pos[0], pos[1], pos[2])) return SendMessage(playerid, "Este jugador no está cerca tuya.");
								if(PLAYER_TEMP[pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]][pt_GAME_STATE] != GAME_STATE_NORMAL) return SendMessage(playerid, "No puedes interactuar con este jugador ahora.");

								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA, DIALOG_STYLE_INPUT, "Inventario - Cantidad de semillas", "{d1d1d1}Escribe la cantidad de semillas que quieres dar:", "Confirmar", "Cancelar");
							}
						}
					}
					case INVENTORY_TYPE_SEED_CANNABIS:
					{
						switch(pTemp(playerid)[pt_INVENTORY_POCKET_OPTION])
						{
							case 0:
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
								
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
								if(PI[playerid][pSTATE] == ROLEPLAY_STATE_JAIL || PI[playerid][pSTATE] == ROLEPLAY_STATE_ARRESTED) return SendMessage(playerid, "Ahora no puedes usar esta funcion.");
								if(PI[playerid][pLEVEL] < 2) return SendMessage(playerid, "Debes ser al menos nivel 2 para dar semillas.");
								
								if(!IsPlayerConnected(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0])) return SendMessage(playerid, "El jugador no está conectado.");
								new Float:pos[3]; GetPlayerPos(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pos[0], pos[1], pos[2]);
								if(!IsPlayerInRangeOfPoint(playerid, NEARS_PLAYERS_DISTANCE, pos[0], pos[1], pos[2])) return SendMessage(playerid, "Este jugador no está cerca tuya.");
								if(PLAYER_TEMP[pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]][pt_GAME_STATE] != GAME_STATE_NORMAL) return SendMessage(playerid, "No puedes interactuar con este jugador ahora.");

								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA, DIALOG_STYLE_INPUT, "Inventario - Cantidad de semillas", "{d1d1d1}Escribe la cantidad de semillas que quieres dar:", "Confirmar", "Cancelar");
							}
						}
					}
					case INVENTORY_TYPE_SEED_CRACK:
					{
						switch(pTemp(playerid)[pt_INVENTORY_POCKET_OPTION])
						{
							case 0:
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
								
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
								if(PI[playerid][pSTATE] == ROLEPLAY_STATE_JAIL || PI[playerid][pSTATE] == ROLEPLAY_STATE_ARRESTED) return SendMessage(playerid, "Ahora no puedes usar esta funcion.");
								if(PI[playerid][pLEVEL] < 2) return SendMessage(playerid, "Debes ser al menos nivel 2 para dar semillas.");
								
								if(!IsPlayerConnected(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0])) return SendMessage(playerid, "El jugador no está conectado.");
								new Float:pos[3]; GetPlayerPos(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pos[0], pos[1], pos[2]);
								if(!IsPlayerInRangeOfPoint(playerid, NEARS_PLAYERS_DISTANCE, pos[0], pos[1], pos[2])) return SendMessage(playerid, "Este jugador no está cerca tuya.");
								if(PLAYER_TEMP[pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]][pt_GAME_STATE] != GAME_STATE_NORMAL) return SendMessage(playerid, "No puedes interactuar con este jugador ahora.");

								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA, DIALOG_STYLE_INPUT, "Inventario - Cantidad de semillas", "{d1d1d1}Escribe la cantidad de semillas que quieres dar:", "Confirmar", "Cancelar");
							}
						}
					}
					case INVENTORY_TYPE_MEDICINE:
					{
						switch(pTemp(playerid)[pt_INVENTORY_POCKET_OPTION])
						{
							case 0:
							{
								PC_EmulateCommand(playerid, "/consumir medicamento");
							}
							case 1:
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
								
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_1] = 0;

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
								if(PI[playerid][pSTATE] == ROLEPLAY_STATE_JAIL || PI[playerid][pSTATE] == ROLEPLAY_STATE_ARRESTED) return SendMessage(playerid, "Ahora no puedes usar esta funcion.");
								if(PI[playerid][pLEVEL] < 2) return SendMessage(playerid, "Debes ser al menos nivel 2 para hacer eso.");
								
								if(!IsPlayerConnected(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0])) return SendMessage(playerid, "El jugador no está conectado.");
								new Float:pos[3]; GetPlayerPos(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pos[0], pos[1], pos[2]);
								if(!IsPlayerInRangeOfPoint(playerid, NEARS_PLAYERS_DISTANCE, pos[0], pos[1], pos[2])) return SendMessage(playerid, "Este jugador no está cerca tuya.");
								if(PLAYER_TEMP[pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]][pt_GAME_STATE] != GAME_STATE_NORMAL) return SendMessage(playerid, "No puedes interactuar con este jugador ahora.");

								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA, DIALOG_STYLE_INPUT, "Inventario - Cantidad de medicamentos", "{d1d1d1}Escribe la cantidad de medicamentos que quieres dar:", "Confirmar", "Cancelar");
							}
							case 2:
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
								
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_1] = 1;

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
								if(PI[playerid][pSTATE] == ROLEPLAY_STATE_JAIL || PI[playerid][pSTATE] == ROLEPLAY_STATE_ARRESTED) return SendMessage(playerid, "Ahora no puedes usar esta funcion.");
								if(PI[playerid][pLEVEL] < 2) return SendMessage(playerid, "Debes ser al menos nivel 2 para hacer eso.");
								
								if(!IsPlayerConnected(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0])) return SendMessage(playerid, "El jugador no está conectado.");
								new Float:pos[3]; GetPlayerPos(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pos[0], pos[1], pos[2]);
								if(!IsPlayerInRangeOfPoint(playerid, NEARS_PLAYERS_DISTANCE, pos[0], pos[1], pos[2])) return SendMessage(playerid, "Este jugador no está cerca tuya.");
								if(PLAYER_TEMP[pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]][pt_GAME_STATE] != GAME_STATE_NORMAL) return SendMessage(playerid, "No puedes interactuar con este jugador ahora.");

								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA, DIALOG_STYLE_INPUT, "Inventario - Cantidad de medicamentos", "{d1d1d1}Escribe la cantidad de medicamentos que quieres vender:", "Confirmar", "Cancelar");
							}
						}
					}
					case INVENTORY_TYPE_CANNABIS:
					{
						switch(pTemp(playerid)[pt_INVENTORY_POCKET_OPTION])
						{
							case 0:
							{
								PC_EmulateCommand(playerid, "/consumir marihuana");
							}
							case 1:
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
								
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_1] = 0;

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
								if(PI[playerid][pSTATE] == ROLEPLAY_STATE_JAIL || PI[playerid][pSTATE] == ROLEPLAY_STATE_ARRESTED) return SendMessage(playerid, "Ahora no puedes usar esta funcion.");
								if(PI[playerid][pLEVEL] < 2) return SendMessage(playerid, "Debes ser al menos nivel 2 para hacer eso.");
								
								if(!IsPlayerConnected(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0])) return SendMessage(playerid, "El jugador no está conectado.");
								new Float:pos[3]; GetPlayerPos(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pos[0], pos[1], pos[2]);
								if(!IsPlayerInRangeOfPoint(playerid, NEARS_PLAYERS_DISTANCE, pos[0], pos[1], pos[2])) return SendMessage(playerid, "Este jugador no está cerca tuya.");
								if(PLAYER_TEMP[pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]][pt_GAME_STATE] != GAME_STATE_NORMAL) return SendMessage(playerid, "No puedes interactuar con este jugador ahora.");

								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA, DIALOG_STYLE_INPUT, "Inventario - Cantidad de marihuana", "{d1d1d1}Escribe la cantidad de marihuana que quieres dar:", "Confirmar", "Cancelar");
							}
							case 2:
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
								
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_1] = 1;

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
								if(PI[playerid][pSTATE] == ROLEPLAY_STATE_JAIL || PI[playerid][pSTATE] == ROLEPLAY_STATE_ARRESTED) return SendMessage(playerid, "Ahora no puedes usar esta funcion.");
								if(PI[playerid][pLEVEL] < 2) return SendMessage(playerid, "Debes ser al menos nivel 2 para hacer eso.");
								
								if(!IsPlayerConnected(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0])) return SendMessage(playerid, "El jugador no está conectado.");
								new Float:pos[3]; GetPlayerPos(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pos[0], pos[1], pos[2]);
								if(!IsPlayerInRangeOfPoint(playerid, NEARS_PLAYERS_DISTANCE, pos[0], pos[1], pos[2])) return SendMessage(playerid, "Este jugador no está cerca tuya.");
								if(PLAYER_TEMP[pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]][pt_GAME_STATE] != GAME_STATE_NORMAL) return SendMessage(playerid, "No puedes interactuar con este jugador ahora.");

								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA, DIALOG_STYLE_INPUT, "Inventario - Cantidad de marihuana", "{d1d1d1}Escribe la cantidad de marihuana que quieres vender:", "Confirmar", "Cancelar");
							}
						}
					}
					case INVENTORY_TYPE_CRACK:
					{
						switch(pTemp(playerid)[pt_INVENTORY_POCKET_OPTION])
						{
							case 0:
							{
								PC_EmulateCommand(playerid, "/consumir crack");
							}
							case 1:
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
								
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_1] = 0;

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
								if(PI[playerid][pSTATE] == ROLEPLAY_STATE_JAIL || PI[playerid][pSTATE] == ROLEPLAY_STATE_ARRESTED) return SendMessage(playerid, "Ahora no puedes usar esta funcion.");
								if(PI[playerid][pLEVEL] < 2) return SendMessage(playerid, "Debes ser al menos nivel 2 para hacer eso.");
								
								if(!IsPlayerConnected(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0])) return SendMessage(playerid, "El jugador no está conectado.");
								new Float:pos[3]; GetPlayerPos(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pos[0], pos[1], pos[2]);
								if(!IsPlayerInRangeOfPoint(playerid, NEARS_PLAYERS_DISTANCE, pos[0], pos[1], pos[2])) return SendMessage(playerid, "Este jugador no está cerca tuya.");
								if(PLAYER_TEMP[pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]][pt_GAME_STATE] != GAME_STATE_NORMAL) return SendMessage(playerid, "No puedes interactuar con este jugador ahora.");

								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA, DIALOG_STYLE_INPUT, "Inventario - Cantidad de crack", "{d1d1d1}Escribe la cantidad de crack que quieres dar:", "Confirmar", "Cancelar");
							}
							case 2:
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");

								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_1] = 1;

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
								if(PI[playerid][pSTATE] == ROLEPLAY_STATE_JAIL || PI[playerid][pSTATE] == ROLEPLAY_STATE_ARRESTED) return SendMessage(playerid, "Ahora no puedes usar esta funcion.");
								if(PI[playerid][pLEVEL] < 2) return SendMessage(playerid, "Debes ser al menos nivel 2 para hacer eso.");
								
								if(!IsPlayerConnected(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0])) return SendMessage(playerid, "El jugador no está conectado.");
								new Float:pos[3]; GetPlayerPos(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pos[0], pos[1], pos[2]);
								if(!IsPlayerInRangeOfPoint(playerid, NEARS_PLAYERS_DISTANCE, pos[0], pos[1], pos[2])) return SendMessage(playerid, "Este jugador no está cerca tuya.");
								if(PLAYER_TEMP[pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]][pt_GAME_STATE] != GAME_STATE_NORMAL) return SendMessage(playerid, "No puedes interactuar con este jugador ahora.");

								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA, DIALOG_STYLE_INPUT, "Inventario - Cantidad de crack", "{d1d1d1}Escribe la cantidad de crack que quieres vender:", "Confirmar", "Cancelar");
							}
						}
					}
					case INVENTORY_TYPE_MECHANIC_KITS:
					{
						switch(pTemp(playerid)[pt_INVENTORY_POCKET_OPTION])
						{
							case 0:
							{
								PC_EmulateCommand(playerid, "/reparar");
							}
							case 1:
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");

								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
								if(PI[playerid][pSTATE] == ROLEPLAY_STATE_JAIL || PI[playerid][pSTATE] == ROLEPLAY_STATE_ARRESTED) return SendMessage(playerid, "Ahora no puedes usar esta funcion.");
								if(PI[playerid][pLEVEL] < 2) return SendMessage(playerid, "Debes ser al menos nivel 2 para hacer eso.");
								
								if(!IsPlayerConnected(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0])) return SendMessage(playerid, "El jugador no está conectado.");
								new Float:pos[3]; GetPlayerPos(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pos[0], pos[1], pos[2]);
								if(!IsPlayerInRangeOfPoint(playerid, NEARS_PLAYERS_DISTANCE, pos[0], pos[1], pos[2])) return SendMessage(playerid, "Este jugador no está cerca tuya.");
								if(PLAYER_TEMP[pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]][pt_GAME_STATE] != GAME_STATE_NORMAL) return SendMessage(playerid, "No puedes interactuar con este jugador ahora.");

								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA, DIALOG_STYLE_INPUT, "Inventario - Cantidad de kits", "{d1d1d1}Escribe la cantidad de kits que quieres dar:", "Confirmar", "Cancelar");
							}
						}
					}
					case INVENTORY_TYPE_MEDICAL_KITS:
					{
						switch(pTemp(playerid)[pt_INVENTORY_POCKET_OPTION])
						{
							case 0:
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");

								new cmd[445]; format(cmd, 445, "/curar %d", params_extra);
								PC_EmulateCommand(playerid, cmd);
							}
							case 1:
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");

								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;

								if(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] == playerid) return ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
								if(PI[playerid][pSTATE] == ROLEPLAY_STATE_JAIL || PI[playerid][pSTATE] == ROLEPLAY_STATE_ARRESTED) return SendMessage(playerid, "Ahora no puedes usar esta funcion.");
								if(PI[playerid][pLEVEL] < 2) return SendMessage(playerid, "Debes ser al menos nivel 2 para hacer eso.");
								
								if(!IsPlayerConnected(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0])) return SendMessage(playerid, "El jugador no está conectado.");
								new Float:pos[3]; GetPlayerPos(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pos[0], pos[1], pos[2]);
								if(!IsPlayerInRangeOfPoint(playerid, NEARS_PLAYERS_DISTANCE, pos[0], pos[1], pos[2])) return SendMessage(playerid, "Este jugador no está cerca tuya.");
								if(PLAYER_TEMP[pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0]][pt_GAME_STATE] != GAME_STATE_NORMAL) return SendMessage(playerid, "No puedes interactuar con este jugador ahora.");

								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA, DIALOG_STYLE_INPUT, "Inventario - Cantidad de kits", "{d1d1d1}Escribe la cantidad de kits que quieres dar:", "Confirmar", "Cancelar");
							}
						}
					}
					case INVENTORY_TYPE_WEAPON_OPTIONS:
					{
						switch(pTemp(playerid)[pt_INVENTORY_POCKET_OPTION])
						{
							case SELECTION_TYPE_GIVE: //dar
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");

								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;

								new command[445];
								format(command, sizeof command, "/dar arma %d %d", params_extra, PLAYER_TEMP[playerid][pt_SELECTED_DIALOG_WEAPON_SLOT]);
								PC_EmulateCommand(playerid, command);
							}
							case SELECTION_TYPE_SELL:
							{
								new params_extra;
								if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");

								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = params_extra;

								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA, DIALOG_STYLE_INPUT, "Inventario - Precio del Arma", "{d1d1d1}Escribe el precio del arma que quieres vender:", "Confirmar", "Cancelar");
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
				
				new cmd[445];
				Loop(i, 445, 0) cmd[i] = EOS;
				
				switch(pTemp(playerid)[pt_INVENTORY_POCKET_TYPE])
				{
					case INVENTORY_TYPE_CASH:
					{
						new params_extra;
						if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");

						format(cmd, sizeof cmd, "/dar dinero %d %d", pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], params_extra);
						PC_EmulateCommand(playerid, cmd);
					}
					case INVENTORY_TYPE_MECHANIC_PIECES:
					{
						new params_extra;
						if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
						if(params_extra < 0 || params_extra > PI[playerid][pMECHANIC_PIECES]) return SendMessage(playerid, "Cantidad de piezas incorrecta.");
						
						PI[playerid][pMECHANIC_PIECES] -= params_extra;
						PI[ pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] ][pMECHANIC_PIECES] += params_extra;

						new action[64];
						format(action, sizeof action, "le da piezas a %s.", PLAYER_TEMP[ pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] ][pt_NAME]);
						Auto_SendPlayerAction(playerid, action);
					}
					case INVENTORY_TYPE_SEED_MEDICINE:
					{
						new params_extra;
						if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
						if(params_extra < 0 || params_extra > PI[playerid][pSEED_MEDICINE]) return SendMessage(playerid, "Cantidad de semillas incorrecta.");
						
						PI[playerid][pSEED_MEDICINE] -= params_extra;
						PI[ pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] ][pSEED_MEDICINE] += params_extra;

						new action[64];
						format(action, sizeof action, "le da algo a %s.", PLAYER_TEMP[ pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] ][pt_NAME]);
						Auto_SendPlayerAction(playerid, action);
					}
					case INVENTORY_TYPE_SEED_CANNABIS:
					{
						new params_extra;
						if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
						if(params_extra < 0 || params_extra > PI[playerid][pSEED_CANNABIS]) return SendMessage(playerid, "Cantidad de semillas incorrecta..");
						
						PI[playerid][pSEED_CANNABIS] -= params_extra;
						PI[ pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] ][pSEED_CANNABIS] += params_extra;

						new action[64];
						format(action, sizeof action, "le da algo a %s.", PLAYER_TEMP[ pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] ][pt_NAME]);
						Auto_SendPlayerAction(playerid, action);
					}
					case INVENTORY_TYPE_SEED_CRACK:
					{
						new params_extra;
						if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
						if(params_extra < 0 || params_extra > PI[playerid][pSEED_CRACK]) return SendMessage(playerid, "Cantidad de semillas incorrecta.");
						
						PI[playerid][pSEED_CRACK] -= params_extra;
						PI[ pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] ][pSEED_CRACK] += params_extra;

						new action[64];
						format(action, sizeof action, "le da algo a %s.", PLAYER_TEMP[ pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] ][pt_NAME]);
						Auto_SendPlayerAction(playerid, action);
					}
					case INVENTORY_TYPE_MEDICINE:
					{
						new params_extra;
						if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");

						switch(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_1])
						{
							case 0:
							{
								format(cmd, 445, "/dar medicamentos %d %d", pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], params_extra);
								PC_EmulateCommand(playerid, cmd);
							}
							case 1:
							{
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_2] = params_extra;
								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA_SELL, DIALOG_STYLE_INPUT, "Inventario - Precio", "{d1d1d1}Ingresa el precio del lo que quieres vender:", "Finalizar", "Cerrar");

							}
						}
					}
					case INVENTORY_TYPE_CANNABIS:
					{
						new params_extra;
						if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");

						switch(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_1])
						{
							case 0:
							{
								format(cmd, 445, "/dar marihuana %d %d", pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], params_extra);
								PC_EmulateCommand(playerid, cmd);

							}
							case 1:
							{
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_2] = params_extra;
								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA_SELL, DIALOG_STYLE_INPUT, "Inventario - Precio", "{d1d1d1}Ingresa el precio del lo que quieres vender:", "Finalizar", "Cerrar");
								
							}
						}
					}
					case INVENTORY_TYPE_CRACK:
					{
						new params_extra;
						if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");

						switch(pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_1])
						{
							case 0:
							{
								format(cmd, 445, "/dar crack %d %d", pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], params_extra);
								PC_EmulateCommand(playerid, cmd);

							}
							case 1:
							{
								pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_2] = params_extra;
								ShowPlayerDialog(playerid, DIALOG_POCKETS_EXTRA_SELL, DIALOG_STYLE_INPUT, "Inventario - Precio", "{d1d1d1}Ingresa el precio del lo que quieres vender:", "Finalizar", "Cerrar");
							}
						}
					}
					case INVENTORY_TYPE_MECHANIC_KITS:
					{
						new params_extra;
						if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
						format(cmd, 445, "/dar kit %d %d", pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], params_extra);
						PC_EmulateCommand(playerid, cmd);
					}
					case INVENTORY_TYPE_MEDICAL_KITS:
					{
						new params_extra;
						if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
						format(cmd, 445, "/dar botiquin %d %d", pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], params_extra);
						PC_EmulateCommand(playerid, cmd);
					}
					case INVENTORY_TYPE_WEAPON_OPTIONS:
					{
						new params_extra;
						if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");
						format(cmd, sizeof cmd, "/vender arma %d %d %d", pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], PLAYER_TEMP[playerid][pt_SELECTED_DIALOG_WEAPON_SLOT], params_extra);
						PC_EmulateCommand(playerid, cmd);
					}
				}
			}
			else ShowPlayerInventoryMenu(playerid, pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER]);
			return Y_HOOKS_BREAK_RETURN_1;
		}
		case DIALOG_POCKETS_EXTRA_SELL:
		{
			new params_extra;
			if(sscanf(inputtext, "d", params_extra)) return SendMessage(playerid, "Error en los parametros, intentalo de nuevo.");

			new cmd[445];
			switch(pTemp(playerid)[pt_INVENTORY_POCKET_TYPE])
			{
				case INVENTORY_TYPE_MEDICINE:
				{
					format(cmd, 445, "/vender medicamentos %d %d %d", pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_2], params_extra);
					PC_EmulateCommand(playerid, cmd);
				}
				case INVENTORY_TYPE_CANNABIS:
				{
					format(cmd, 445, "/vender marihuana %d %d %d", pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_2], params_extra);
					PC_EmulateCommand(playerid, cmd);
				}
				case INVENTORY_TYPE_CRACK:
				{
					format(cmd, 445, "/vender crack %d %d %d", pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0], pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_2], params_extra);
					PC_EmulateCommand(playerid, cmd);
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
		case DIALOG_PLAYER_WEAPONS_OPTIONS: 
		{
			if(response) 
			{
				switch(listitem) 
				{
					case 0:
					{
						if(PLAYER_WORKS[playerid][WORK_POLICE][pwork_SET]) return SendMessage(playerid, "Los policias no pueden hacer esto.");

						new dialog[445], line_str[445];
						pTemp(playerid)[pt_INVENTORY_POCKET_TYPE] = INVENTORY_TYPE_WEAPON_OPTIONS;
						pTemp(playerid)[pt_INVENTORY_POCKET_OPTION] = SELECTION_TYPE_GIVE; //dar

						format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres darle el arma, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 4 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

						new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
						GetPlayerPos(playerid, oldposx, oldposy, oldposz);

						new total_players = 0;
						LoopEx(i, MAX_PLAYERS, 0)
						{
							if(!IsPlayerConnected(i)) continue;
							if(!pTemp(i)[pt_USER_LOGGED]) continue;
							if(GetPlayerVirtualWorld(i) != current_vw) continue;
							if(GetPlayerInterior(i) != current_int) continue;
							if(i == playerid) continue;
							if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

							if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
							{
								format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
								strcat(dialog, line_str);

								total_players ++;
							}
						}

						if(total_players <= 0)
						{
							SendMessage(playerid, "No hay jugadores cerca.");
							return 1;
						}

						ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
					}
					case 1:
					{
						if(PLAYER_WORKS[playerid][WORK_POLICE][pwork_SET]) return SendMessage(playerid, "Los policias no pueden hacer esto.");
						
						new dialog[445], line_str[445];
						pTemp(playerid)[pt_INVENTORY_POCKET_TYPE] = INVENTORY_TYPE_WEAPON_OPTIONS;
						pTemp(playerid)[pt_INVENTORY_POCKET_OPTION] = SELECTION_TYPE_SELL; //vender

						format(f_pocket, "{d1d1d1}Escribe la ID del jugador al que quieres venderle el arma, el usuario debe estar conectado\n{d1d1d1}y a una distancia de 4 o menos metros de ti.\n\n{d1d1d1}Jugadores Cercanos:\n");

						new Float:oldposx, Float:oldposy, Float:oldposz, current_vw = GetPlayerVirtualWorld(playerid), current_int = GetPlayerInterior(playerid);
						GetPlayerPos(playerid, oldposx, oldposy, oldposz);

						new total_players = 0;
						LoopEx(i, MAX_PLAYERS, 0)
						{
							if(!IsPlayerConnected(i)) continue;
							if(!pTemp(i)[pt_USER_LOGGED]) continue;
							if(GetPlayerVirtualWorld(i) != current_vw) continue;
							if(GetPlayerInterior(i) != current_int) continue;
							if(i == playerid) continue;
							if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) continue;

							if(IsPlayerInRangeOfPoint(i, 4.0, oldposx, oldposy, oldposz))
							{
								format(line_str, sizeof(line_str), "{"#YELLOW_COLOR"}%s {d1d1d1}[{ffffff}ID: %d{d1d1d1}]\n", pTemp(i)[pt_NAME], i);
								strcat(dialog, line_str);

								total_players ++;
							}
						}

						if(total_players <= 0)
						{
							SendMessage(playerid, "No hay jugadores cerca.");
							return 1;
						}

						ShowPlayerDialog(playerid, DIALOG_POCKETS_OPTION, DIALOG_STYLE_INPUT, "Inventario - Opción", dialog, "Continuar", "Atras");
					}
					case 2:
					{
						DropWeapon(playerid, PLAYER_TEMP[playerid][pt_SELECTED_DIALOG_WEAPON_SLOT]);
						ApplyAnimation(playerid, "GRENADE", "WEAPON_throwu", 4.1, 0, 1, 1, 0, 0, 1);
						Streamer_Update(playerid);
					}
					case 3: 
					{
						//guardar
						new command[128];
						format(command, sizeof command, "/guardar arma %d", PLAYER_TEMP[playerid][pt_SELECTED_DIALOG_WEAPON_SLOT]);
						PC_EmulateCommand(playerid, command);
					}
				}
			}
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