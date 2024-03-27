#include <YSI-Includes\YSI\y_hooks>

enum E_Airports_Areas 
{
    airport_area_AREAID,
    Float:airport_area_MIN_X,
    Float:airport_area_MIN_Y,
    Float:airport_area_MAX_X,
    Float:airport_area_MAX_Y
};

new Airports_Areas[][E_Airports_Areas] = 
{
    {INVALID_STREAMER_ID, 881.229003, -2811.327148, 2625.628417, -2188.754638}, //LS
    {INVALID_STREAMER_ID, -2299.068603, -1045.947998, -670.923095, 1045.822631}, //SF
    {INVALID_STREAMER_ID, 1234.226196, 573.200256, 1758.641479, 2468.117675}, //LV
    {INVALID_STREAMER_ID, -475.365783, 2198.848144, 870.382324, 2850.787109} //AA
};

new
    PlayerText:pAirSpeedoTd[MAX_PLAYERS][2] = {{PlayerText:INVALID_TEXT_DRAW, ...}, ...},
    bool:pAirSpeedo[MAX_PLAYERS],
    bool:pInAirport[MAX_PLAYERS],
    pAirSpeedoTimer[MAX_PLAYERS] = {-1, ...};

forward OnAirSpeedoRequestUpdate(playerid, vehicleid);

hook OnScriptInit() 
{
    for(new i = 0; i < sizeof Airports_Areas; i ++) {
        Airports_Areas[i][airport_area_AREAID] = CreateDynamicRectangle(Airports_Areas[i][airport_area_MIN_X], Airports_Areas[i][airport_area_MIN_Y], Airports_Areas[i][airport_area_MAX_X], Airports_Areas[i][airport_area_MAX_Y], 0, 0);
        Streamer_SetArrayData(STREAMER_TYPE_AREA, Airports_Areas[i][airport_area_AREAID], E_STREAMER_EXTRA_ID, { AREA_TYPE_AIRPORT });
    }
}

hook OnPlayerConnect(playerid) 
{
    pInAirport[playerid] = false;

    //eliminar obstaculos pistas
    RemoveBuildingForPlayer(playerid, 3664, 1388.0078, -2593.0000, 19.2813, 0.25);
    RemoveBuildingForPlayer(playerid, 3664, 1388.0078, -2494.2656, 19.2813, 0.25);
    RemoveBuildingForPlayer(playerid, 10764, -1041.3594, 451.2500, 16.4844, 0.25);
    RemoveBuildingForPlayer(playerid, 7979, 1477.3984, 1172.4453, 12.8906, 0.25);
    RemoveBuildingForPlayer(playerid, 3672, 1889.6563, -2666.0078, 18.8828, 0.25);
    RemoveBuildingForPlayer(playerid, 3672, 1822.7344, -2666.0078, 18.8828, 0.25);
    RemoveBuildingForPlayer(playerid, 3672, 1682.7266, -2666.0078, 18.8828, 0.25);
    RemoveBuildingForPlayer(playerid, 3672, 1617.2813, -2666.0078, 18.8828, 0.25);
    RemoveBuildingForPlayer(playerid, 3672, 1754.1719, -2666.0078, 18.8828, 0.25);
    RemoveBuildingForPlayer(playerid, 3629, 1617.2813, -2666.0078, 18.8828, 0.25);
    RemoveBuildingForPlayer(playerid, 1290, 1649.0625, -2641.4063, 18.4766, 0.25);
    RemoveBuildingForPlayer(playerid, 3629, 1682.7266, -2666.0078, 18.8828, 0.25);
    RemoveBuildingForPlayer(playerid, 3629, 1754.1719, -2666.0078, 18.8828, 0.25);
    RemoveBuildingForPlayer(playerid, 3629, 1822.7344, -2666.0078, 18.8828, 0.25);
    RemoveBuildingForPlayer(playerid, 1290, 1855.7969, -2641.4063, 18.4766, 0.25);
    RemoveBuildingForPlayer(playerid, 3629, 1889.6563, -2666.0078, 18.8828, 0.25);
    RemoveBuildingForPlayer(playerid, 1290, 1922.2031, -2641.4063, 18.4766, 0.25);
    RemoveBuildingForPlayer(playerid, 3663, 1882.2656, -2395.7813, 14.4688, 0.25);
    RemoveBuildingForPlayer(playerid, 1290, 2003.4531, -2422.1719, 18.4766, 0.25);
    RemoveBuildingForPlayer(playerid, 3664, 2042.7734, -2442.1875, 19.2813, 0.25);
    RemoveBuildingForPlayer(playerid, 1290, 2088.6094, -2422.1719, 18.4766, 0.25);
    RemoveBuildingForPlayer(playerid, 3664, 1960.6953, -2236.4297, 19.2813, 0.25);
    RemoveBuildingForPlayer(playerid, 8240, 1586.2578, 1189.5938, 23.4453, 0.25);
    RemoveBuildingForPlayer(playerid, 8241, 1586.2578, 1189.5938, 23.4453, 0.25);
    RemoveBuildingForPlayer(playerid, 3489, 1609.3359, 1671.6953, 16.4375, 0.25);
    RemoveBuildingForPlayer(playerid, 3490, 1609.3359, 1671.6953, 16.4375, 0.25);
    RemoveBuildingForPlayer(playerid, 3489, 1677.2969, 1671.6953, 16.4375, 0.25);
    RemoveBuildingForPlayer(playerid, 3490, 1677.2969, 1671.6953, 16.4375, 0.25);
    RemoveBuildingForPlayer(playerid, 8334, 1621.7813, 1316.9922, 13.8203, 0.25);
    RemoveBuildingForPlayer(playerid, 8338, 1641.1328, 1629.4063, 13.8203, 0.25);
    RemoveBuildingForPlayer(playerid, 8340, 1568.0000, 1676.1953, 13.8203, 0.25);
    RemoveBuildingForPlayer(playerid, 8378, 1586.2578, 1222.7031, 19.7500, 0.25);
    RemoveBuildingForPlayer(playerid, 8379, 1586.2578, 1222.7031, 19.7500, 0.25);
    RemoveBuildingForPlayer(playerid, 8335, 1621.7813, 1316.9922, 13.8203, 0.25);
    RemoveBuildingForPlayer(playerid, 8341, 1568.0000, 1676.1953, 13.8203, 0.25);
    RemoveBuildingForPlayer(playerid, 8339, 1641.1328, 1629.4063, 13.8203, 0.25);
}

hook OnPlayerDisconnect(playerid, reason) 
{
    DestroyPlayerAirSpeedo(playerid);
}

hook OnPlayerStateChange(playerid, newstate, oldstate) 
{
    if(newstate == PLAYER_STATE_DRIVER) 
    {
        new vehicleid = GetPlayerVehicleID(playerid);
        if(!VEHICLE_INFO[GetVehicleModel(vehicleid) - 400][vehicle_info_NORMAL_SPEEDO] && (Vehicle_IsPlane(vehicleid) || Vehicle_IsHelicopter(vehicleid))) 
        {
            CreatePlayerAirSpeedo(playerid, vehicleid);
        }
    }
    else if(oldstate == PLAYER_STATE_DRIVER && pAirSpeedo[playerid]) 
    {
        DestroyPlayerAirSpeedo(playerid);
    }
}

hook OnPlayerEnterDynArea(playerid, areaid)
{
	new info[2];
	Streamer_GetArrayData(STREAMER_TYPE_AREA, areaid, E_STREAMER_EXTRA_ID, info);
    if(info[0] == AREA_TYPE_AIRPORT) 
    {
        pInAirport[playerid] = true;
        return Y_HOOKS_BREAK_RETURN_1;
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}

hook OnPlayerLeaveDynArea(playerid, areaid)
{
	new info[2];
	Streamer_GetArrayData(STREAMER_TYPE_AREA, areaid, E_STREAMER_EXTRA_ID, info);
    if(info[0] == AREA_TYPE_AIRPORT) 
    {
        pInAirport[playerid] = false;
        return Y_HOOKS_BREAK_RETURN_1;
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}

public OnAirSpeedoRequestUpdate(playerid, vehicleid) 
{
    new string[128];

    new Float:vel = GetVehicleAirSpeed(vehicleid);
    format(string, sizeof string, "%03d", floatround(vel));
    PlayerTextDrawSetString(playerid, pAirSpeedoTd[playerid][0], string);

    if(GLOBAL_VEHICLES[vehicleid][gb_vehicle_PARAMS_ENGINE]) 
    {
        GLOBAL_VEHICLES[vehicleid][gb_vehicle_GAS] -= floatmul(floatdiv(GLOBAL_VEHICLES[vehicleid][gb_vehicle_MAX_GAS], 200), vel * 0.0004);
        if(GLOBAL_VEHICLES[vehicleid][gb_vehicle_GAS] <= 0.1)
        {
            PLAYER_AC_INFO[playerid][CHEAT_VEHICLE_NOFUEL][p_ac_info_IMMUNITY] = gettime() + 15;
            GLOBAL_VEHICLES[vehicleid][gb_vehicle_GAS] = 0.0;
            GLOBAL_VEHICLES[vehicleid][gb_vehicle_PARAMS_ENGINE] = 0;
            UpdateVehicleParams(vehicleid);
            
            SendClientMessage(playerid, SILVER_COLOR2, "El vehiculo se ha quedado sin gasolina...");
        }
    }

    format(string, sizeof string, "GAS_%sL", number_format_thousand(floatround(GLOBAL_VEHICLES[vehicleid][gb_vehicle_GAS])));
    PlayerTextDrawSetString(playerid, pAirSpeedoTd[playerid][1], string);
}

CreatePlayerAirSpeedo(playerid, vehicleid) 
{
    DestroyPlayerAirSpeedo(playerid);

    pAirSpeedoTd[playerid][0] = CreatePlayerTextDraw(playerid, 318.000000, 369.000000, "000");
    PlayerTextDrawFont(playerid, pAirSpeedoTd[playerid][0], 2);
    PlayerTextDrawLetterSize(playerid, pAirSpeedoTd[playerid][0], 0.337499, 1.749999);
    PlayerTextDrawTextSize(playerid, pAirSpeedoTd[playerid][0], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, pAirSpeedoTd[playerid][0], 1);
    PlayerTextDrawSetShadow(playerid, pAirSpeedoTd[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, pAirSpeedoTd[playerid][0], 2);
    PlayerTextDrawColor(playerid, pAirSpeedoTd[playerid][0], -1);
    PlayerTextDrawBackgroundColor(playerid, pAirSpeedoTd[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, pAirSpeedoTd[playerid][0], 50);
    PlayerTextDrawUseBox(playerid, pAirSpeedoTd[playerid][0], 0);
    PlayerTextDrawSetProportional(playerid, pAirSpeedoTd[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, pAirSpeedoTd[playerid][0], 0);

    pAirSpeedoTd[playerid][1] = CreatePlayerTextDraw(playerid, 318.000000, 383.000000, "GAS_0.0L");
    PlayerTextDrawFont(playerid, pAirSpeedoTd[playerid][1], 2);
    PlayerTextDrawLetterSize(playerid, pAirSpeedoTd[playerid][1], 0.174999, 1.250000);
    PlayerTextDrawTextSize(playerid, pAirSpeedoTd[playerid][1], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, pAirSpeedoTd[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, pAirSpeedoTd[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, pAirSpeedoTd[playerid][1], 2);
    PlayerTextDrawColor(playerid, pAirSpeedoTd[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, pAirSpeedoTd[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, pAirSpeedoTd[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, pAirSpeedoTd[playerid][1], 0);
    PlayerTextDrawSetProportional(playerid, pAirSpeedoTd[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, pAirSpeedoTd[playerid][1], 0);

    for(new i = 0; i < sizeof pAirSpeedoTd[]; i ++) 
    {
        PlayerTextDrawShow(playerid, pAirSpeedoTd[playerid][i]);
    }

    pAirSpeedoTimer[playerid] = SetTimerEx("OnAirSpeedoRequestUpdate", 250, true, "ii", playerid, vehicleid);
    pAirSpeedo[playerid] = true;
}

DestroyPlayerAirSpeedo(playerid) 
{
    for(new i = 0; i < sizeof pAirSpeedoTd[]; i ++) 
    {
        PlayerTextDrawDestroy(playerid, pAirSpeedoTd[playerid][i]);
    }

    if(pAirSpeedoTimer[playerid] != -1) 
    {
        KillTimer(pAirSpeedoTimer[playerid]);
        pAirSpeedoTimer[playerid] = -1;
    }

    pAirSpeedo[playerid] = false;
}

stock Float:GetVehicleAirSpeed(vehicleid)
{
    new Float:vel = GetVehicleSpeed(vehicleid);
	return vel * 1.2; //vel * 0.54;
}