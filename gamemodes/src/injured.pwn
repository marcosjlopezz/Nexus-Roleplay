#include <YSI-Includes\YSI\y_hooks>

stock SpawnPlayerDeath(playerid)
{
    if(PI[playerid][pSTATE] == ROLEPLAY_STATE_CRACK) 
    {
		PLAYER_TEMP[playerid][pt_INJURED_POS][0] = PI[playerid][pPOS_X];
		PLAYER_TEMP[playerid][pt_INJURED_POS][1] = PI[playerid][pPOS_Y];
		PLAYER_TEMP[playerid][pt_INJURED_POS][2] = PI[playerid][pPOS_Z];
		PLAYER_TEMP[playerid][pt_INJURED_POS][3] = PI[playerid][pANGLE];
        PlayerTemp[playerid][pt_INJURED_TIMER_POS] = gettime() + 5;

        SetPlayerHud(playerid);
        SetPlayerHealthEx(playerid, 100.0);
        SetCameraBehindPlayer(playerid);
        SendAlertToMedics(playerid);
        TogglePlayerControllableEx(playerid, false);

        KillTimer(PLAYER_TEMP[playerid][pt_TIMERS][3]);
        PLAYER_TEMP[playerid][pt_TIMERS][3] = SetTimerEx("TogglePlayerControl", seconds(5), false, "ib", playerid, true);
        
        if(PI[playerid][pWANTED_LEVEL] > 0) SendClientMessagef(playerid, -1, "Estas herido y en b�squeda, espera a que la policia venga a por ti.");
        else SendClientMessagef(playerid, -1, "Estas herido, espera a que venga un medico.");

        SetPlayerPosEx(playerid, PLAYER_TEMP[playerid][pt_INJURED_POS][0], PLAYER_TEMP[playerid][pt_INJURED_POS][1], PLAYER_TEMP[playerid][pt_INJURED_POS][2], PLAYER_TEMP[playerid][pt_INJURED_POS][3], GetPlayerInterior(playerid), GetPlayerVirtualWorld(playerid), 0, 1);
        if(GetPlayerAnimationIndex(playerid) != 1537) ApplyAnimation(playerid, "SWEET", "Sweet_injuredloop", 4.1, true, 0, 0, 0, 0, 1);
    }
}

hook OnPlayerSpawn(playerid) 
{
    if(PI[playerid][pSTATE] == ROLEPLAY_STATE_CRACK) 
    {
        if(GetPlayerAnimationIndex(playerid) != 1537) ApplyAnimation(playerid, "SWEET", "Sweet_injuredloop", 4.1, true, 0, 0, 0, 0, 1);
		SpawnPlayerDeath(playerid);
    }
}

hook OnPlayerUpdate(playerid)
{
    if(gettime() > PlayerTemp[playerid][pt_INJURED_TIMER_POS])
    {
        if(PI[playerid][pSTATE] == ROLEPLAY_STATE_CRACK)
        {
            new Float:distance = GetPlayerDistanceFromPoint(playerid, 
            PLAYER_TEMP[playerid][pt_INJURED_POS][0], 
            PLAYER_TEMP[playerid][pt_INJURED_POS][1], 
            PLAYER_TEMP[playerid][pt_INJURED_POS][2]);

            if(distance > 3.0)
            {
                SetPlayerPosEx(playerid, PLAYER_TEMP[playerid][pt_INJURED_POS][0], PLAYER_TEMP[playerid][pt_INJURED_POS][1], PLAYER_TEMP[playerid][pt_INJURED_POS][2], PLAYER_TEMP[playerid][pt_INJURED_POS][3], GetPlayerInterior(playerid), GetPlayerVirtualWorld(playerid), 0, 1);
                PlayerTemp[playerid][pt_INJURED_TIMER_POS] = gettime() + 5;
            }
            
            if(GetPlayerAnimationIndex(playerid) != 1537) ApplyAnimation(playerid, "SWEET", "Sweet_injuredloop", 4.1, true, 0, 0, 0, 0, 1);
        }
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}

hook OnPlayerEnterVehicle(playerid, vehicleid, ispassenger) 
{
    if(PI[playerid][pSTATE] == ROLEPLAY_STATE_CRACK)
	{
		new Float:sx, Float:sy, Float:sz;
        GetPlayerPos(playerid, sx, sy, sz);
        RemovePlayerFromVehicle(playerid);
		SetPlayerPos(playerid, sx, sy, sz);

		ApplyAnimation(playerid, "SWEET", "Sweet_injuredloop", 4.1, true, 0, 0, 0, 0, 1);
		return Y_HOOKS_BREAK_RETURN_1;
	}
    return Y_HOOKS_CONTINUE_RETURN_1;
}