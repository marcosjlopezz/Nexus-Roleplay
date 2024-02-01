#include <YSI-Includes\YSI\y_hooks>

#define ICON_REPAIR "HUD:radar_modgarage"

new
    pLastFuelSubtraction[MAX_PLAYERS],
	bool:pSpeedoShown[MAX_PLAYERS],
    pSpeedoTimer[MAX_PLAYERS] = {-1, ...},
    PlayerText:pSpeedoTd[MAX_PLAYERS][4];

hook OnPlayerConnect(playerid) 
{
    pSpeedoTd[playerid][0] = CreatePlayerTextDraw(playerid, 337.000000, 355.000000, "Auto");
    PlayerTextDrawFont(playerid, pSpeedoTd[playerid][0], 5);
    PlayerTextDrawLetterSize(playerid, pSpeedoTd[playerid][0], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, pSpeedoTd[playerid][0], 50.000000, 50.000000);
    PlayerTextDrawSetOutline(playerid, pSpeedoTd[playerid][0], 0);
    PlayerTextDrawSetShadow(playerid, pSpeedoTd[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, pSpeedoTd[playerid][0], 1);
    PlayerTextDrawColor(playerid, pSpeedoTd[playerid][0], -1);
    PlayerTextDrawBackgroundColor(playerid, pSpeedoTd[playerid][0], 0);
    PlayerTextDrawBoxColor(playerid, pSpeedoTd[playerid][0], 0);
    PlayerTextDrawUseBox(playerid, pSpeedoTd[playerid][0], 0);
    PlayerTextDrawSetProportional(playerid, pSpeedoTd[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, pSpeedoTd[playerid][0], 0);
    PlayerTextDrawSetPreviewModel(playerid, pSpeedoTd[playerid][0], 411);
    PlayerTextDrawSetPreviewRot(playerid, pSpeedoTd[playerid][0], -10.000000, 0.000000, -40.000000, 0.940000);
    PlayerTextDrawSetPreviewVehCol(playerid, pSpeedoTd[playerid][0], 1, 1);

    pSpeedoTd[playerid][1] = CreatePlayerTextDraw(playerid, 318.000000, 369.000000, "000");
    PlayerTextDrawFont(playerid, pSpeedoTd[playerid][1], 2);
    PlayerTextDrawLetterSize(playerid, pSpeedoTd[playerid][1], 0.337499, 1.749999);
    PlayerTextDrawTextSize(playerid, pSpeedoTd[playerid][1], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, pSpeedoTd[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, pSpeedoTd[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, pSpeedoTd[playerid][1], 2);
    PlayerTextDrawColor(playerid, pSpeedoTd[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, pSpeedoTd[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, pSpeedoTd[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, pSpeedoTd[playerid][1], 0);
    PlayerTextDrawSetProportional(playerid, pSpeedoTd[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, pSpeedoTd[playerid][1], 0);

    pSpeedoTd[playerid][2] = CreatePlayerTextDraw(playerid, 318.000000, 383.000000, "GAS_0.0L");
    PlayerTextDrawFont(playerid, pSpeedoTd[playerid][2], 2);
    PlayerTextDrawLetterSize(playerid, pSpeedoTd[playerid][2], 0.174999, 1.250000);
    PlayerTextDrawTextSize(playerid, pSpeedoTd[playerid][2], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, pSpeedoTd[playerid][2], 1);
    PlayerTextDrawSetShadow(playerid, pSpeedoTd[playerid][2], 0);
    PlayerTextDrawAlignment(playerid, pSpeedoTd[playerid][2], 2);
    PlayerTextDrawColor(playerid, pSpeedoTd[playerid][2], -1);
    PlayerTextDrawBackgroundColor(playerid, pSpeedoTd[playerid][2], 255);
    PlayerTextDrawBoxColor(playerid, pSpeedoTd[playerid][2], 50);
    PlayerTextDrawUseBox(playerid, pSpeedoTd[playerid][2], 0);
    PlayerTextDrawSetProportional(playerid, pSpeedoTd[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, pSpeedoTd[playerid][2], 0);

    pSpeedoTd[playerid][3] = CreatePlayerTextDraw(playerid, 318.000000, 390.000000, "_");
    PlayerTextDrawFont(playerid, pSpeedoTd[playerid][3], 2);
    PlayerTextDrawLetterSize(playerid, pSpeedoTd[playerid][3], 0.345833, 1.250000);
    PlayerTextDrawTextSize(playerid, pSpeedoTd[playerid][3], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, pSpeedoTd[playerid][3], 1);
    PlayerTextDrawSetShadow(playerid, pSpeedoTd[playerid][3], 0);
    PlayerTextDrawAlignment(playerid, pSpeedoTd[playerid][3], 2);
    PlayerTextDrawColor(playerid, pSpeedoTd[playerid][3], -1);
    PlayerTextDrawBackgroundColor(playerid, pSpeedoTd[playerid][3], 255);
    PlayerTextDrawBoxColor(playerid, pSpeedoTd[playerid][3], 50);
    PlayerTextDrawUseBox(playerid, pSpeedoTd[playerid][3], 0);
    PlayerTextDrawSetProportional(playerid, pSpeedoTd[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, pSpeedoTd[playerid][3], 0);
}

hook OnPlayerDisconnect(playerid, reason) 
{
    for(new i = 0; i < sizeof pSpeedoTd[]; i ++) 
	{
        PlayerTextDrawDestroy(playerid, pSpeedoTd[playerid][i]);
    }


	pSpeedoShown[playerid] = false;
    pLastFuelSubtraction[playerid] = 0;
    if(pSpeedoTimer[playerid] != -1) 
	{
	    KillTimer(pSpeedoTimer[playerid]);
        pSpeedoTimer[playerid] = -1;
    }
}

hook OnPlayerStateChange(playerid, newstate, oldstate) 
{
    if(newstate == PLAYER_STATE_DRIVER) 
	{
        new vehicleid = GetPlayerVehicleID(playerid);
        if(VEHICLE_INFO[GetVehicleModel(vehicleid) - 400][vehicle_info_NORMAL_SPEEDO]) ShowPlayerSpeedoMeter(playerid);
    }
    else if(oldstate == PLAYER_STATE_DRIVER) 
	{
        HidePlayerSpeedoMeter(playerid);
    }
}

ShowPlayerSpeedoMeter(playerid)
{
	if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return 0;
	new vehicleid = GetPlayerVehicleID(playerid), modelid = GetVehicleModel(vehicleid);
	if(!VEHICLE_INFO[modelid - 400][vehicle_info_NORMAL_SPEEDO]) return 0;
    if(pSpeedoTimer[playerid] != -1) 
	{
	    KillTimer(pSpeedoTimer[playerid]);
        pSpeedoTimer[playerid] = -1;
    }
	
	new td_str[64];
	format(td_str, sizeof td_str, "GAS_%.1fL", GLOBAL_VEHICLES[vehicleid][gb_vehicle_GAS]);
	PlayerTextDrawSetString(playerid, pSpeedoTd[playerid][2], td_str);
	
	PlayerTextDrawSetString(playerid, pSpeedoTd[playerid][1], "000");
    PlayerTextDrawSetString(playerid, pSpeedoTd[playerid][3], "_");

    PlayerTextDrawSetPreviewModel(playerid, pSpeedoTd[playerid][0], modelid);
    new color1, color2; GetVehicleColor(vehicleid, color1, color2);
    PlayerTextDrawSetPreviewVehCol(playerid, pSpeedoTd[playerid][0], color1, color2);

	for(new i = 0; i < sizeof pSpeedoTd[]; i ++) 
	{
		PlayerTextDrawShow(playerid, pSpeedoTd[playerid][i]);
	}
	pSpeedoShown[playerid] = true;

	pLastFuelSubtraction[playerid] = gettime();
	pSpeedoTimer[playerid] = SetTimerEx("UpdatePlayerSpeedo", 250, true, "iif", playerid, vehicleid, VEHICLE_INFO[modelid - 400][vehicle_info_MAX_VEL]);
	return 1;
}

HidePlayerSpeedoMeter(playerid)
{
    pLastFuelSubtraction[playerid] = 0;
	pSpeedoShown[playerid] = false;

	if(pSpeedoTimer[playerid] != -1) 
	{
	    KillTimer(pSpeedoTimer[playerid]);
        pSpeedoTimer[playerid] = -1;
    }

	for(new i = 0; i < sizeof pSpeedoTd[]; i ++) 
	{
        PlayerTextDrawHide(playerid, pSpeedoTd[playerid][i]);
    }
	return 1;
}

forward UpdatePlayerSpeedo(playerid, vehicleid, Float:maxvel);
public UpdatePlayerSpeedo(playerid, vehicleid, Float:maxvel)
{
	for(new i = 1; i < sizeof pSpeedoTd[]; i ++) 
	{
		PlayerTextDrawShow(playerid, pSpeedoTd[playerid][i]);
	}
	pSpeedoShown[playerid] = true;

	if(vehicleid != GetPlayerVehicleID(playerid))
	{
		HidePlayerSpeedoMeter(playerid);
		ShowPlayerSpeedoMeter(playerid);
		
		GLOBAL_VEHICLES[vehicleid][gb_vehicle_DRIVER] = INVALID_PLAYER_ID;
		GLOBAL_VEHICLES[vehicleid][gb_vehicle_LAST_DRIVER] = playerid;
		GLOBAL_VEHICLES[vehicleid][gb_vehicle_OCCUPIED] = false;
		PLAYER_TEMP[playerid][pt_LAST_VEHICLE_ID] = GetPlayerVehicleID(playerid);
		GLOBAL_VEHICLES[ PLAYER_TEMP[playerid][pt_LAST_VEHICLE_ID] ][gb_vehicle_OCCUPIED] = true;
		return 0;
	}
	
	new Float:vel = GetVehicleSpeed(vehicleid);
	
	if(ac_Info[CHEAT_VEHICLE_SPEED_HACK][ac_Enabled])
	{
		if(gettime() > PLAYER_AC_INFO[playerid][CHEAT_VEHICLE_SPEED_HACK][p_ac_info_IMMUNITY])
		{
			if(vel > maxvel + 100.0)
			{
				if(!ac_Info[CHEAT_VEHICLE_SPEED_HACK][ac_Interval]) OnPlayerCheatDetected(playerid, CHEAT_VEHICLE_SPEED_HACK);
				else
				{
					if(gettime() - PLAYER_AC_INFO[playerid][CHEAT_VEHICLE_SPEED_HACK][p_ac_info_LAST_DETECTION] > ac_Info[CHEAT_VEHICLE_SPEED_HACK][ac_Interval]) PLAYER_AC_INFO[playerid][CHEAT_VEHICLE_SPEED_HACK][p_ac_info_DETECTIONS] = 0;
					else PLAYER_AC_INFO[playerid][CHEAT_VEHICLE_SPEED_HACK][p_ac_info_DETECTIONS] ++;
					
					PLAYER_AC_INFO[playerid][CHEAT_VEHICLE_SPEED_HACK][p_ac_info_LAST_DETECTION] = gettime();
					if(PLAYER_AC_INFO[playerid][CHEAT_VEHICLE_SPEED_HACK][p_ac_info_DETECTIONS] >= ac_Info[CHEAT_VEHICLE_SPEED_HACK][ac_Detections]) OnPlayerCheatDetected(playerid, CHEAT_VEHICLE_SPEED_HACK);
				}
			}
		}
	}
	
	if(GLOBAL_VEHICLES[vehicleid][gb_vehicle_STATE] == VEHICLE_STATE_NORMAL)
	{
		GetVehicleHealth(vehicleid, GLOBAL_VEHICLES[vehicleid][gb_vehicle_HEALTH]);
		if(GLOBAL_VEHICLES[vehicleid][gb_vehicle_HEALTH] < MIN_VEHICLE_HEALTH)
		{	
			GLOBAL_VEHICLES[vehicleid][gb_vehicle_STATE] = VEHICLE_STATE_DAMAGED;
			GLOBAL_VEHICLES[vehicleid][gb_vehicle_HEALTH] = MIN_VEHICLE_HEALTH;
			SetVehicleHealthEx(vehicleid, GLOBAL_VEHICLES[vehicleid][gb_vehicle_HEALTH], playerid);
				
			GLOBAL_VEHICLES[vehicleid][gb_vehicle_PARAMS_ENGINE] = 0;
			UpdateVehicleParams(vehicleid);
			SendClientMessage(playerid, SILVER_COLOR2, "El motor del vehículo está demasiado estropeado.");
		}
	}
	
	if(gettime() > pLastFuelSubtraction[playerid] + 5)
	{
		if(GLOBAL_VEHICLES[vehicleid][gb_vehicle_PARAMS_ENGINE])
		{
			GLOBAL_VEHICLES[vehicleid][gb_vehicle_GAS] -= floatmul(floatdiv(vel, maxvel), 0.1);
			
			if(GLOBAL_VEHICLES[vehicleid][gb_vehicle_GAS] <= 0.1)
			{
				PLAYER_AC_INFO[playerid][CHEAT_VEHICLE_NOFUEL][p_ac_info_IMMUNITY] = gettime() + 15;
				GLOBAL_VEHICLES[vehicleid][gb_vehicle_GAS] = 0.0;
				GLOBAL_VEHICLES[vehicleid][gb_vehicle_PARAMS_ENGINE] = 0;
				UpdateVehicleParams(vehicleid);
				
				SendClientMessage(playerid, -1, "{999999}El vehículo se ha quedado sin gasolina...");
			}
		}
		pLastFuelSubtraction[playerid] = gettime();
	}
	
	new td_str[64];
	format(td_str, 64, "GAS_%.1fL", GLOBAL_VEHICLES[vehicleid][gb_vehicle_GAS]);
	PlayerTextDrawSetString(playerid, pSpeedoTd[playerid][2], td_str);
	
	format(td_str, 64, "%03d", floatround(vel));
	PlayerTextDrawSetString(playerid, pSpeedoTd[playerid][1], td_str);

	GetVehiclePos(vehicleid, GLOBAL_VEHICLES[vehicleid][gb_vehicle_POS][0], GLOBAL_VEHICLES[vehicleid][gb_vehicle_POS][1], GLOBAL_VEHICLES[vehicleid][gb_vehicle_POS][2]);
	return 1;
}

stock Float:GetVehicleSpeed(vehicleid)
{
    new Float:vx, Float:vy, Float:vz;
    GetVehicleVelocity(vehicleid, vx, vy, vz);
	new Float:vel = floatmul(floatsqroot(floatadd(floatadd(floatpower(vx, 2), floatpower(vy, 2)),  floatpower(vz, 2))), 181.5);
	return vel;
}