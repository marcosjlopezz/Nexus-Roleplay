#include <YSI-Includes\YSI\y_hooks>

new bool:ServerPlayButton[MAX_PLAYERS];

stock ShowPlayerPlayButton(playerid)
{
    SendMessage(playerid, "_");
    
    for(new i = 0; i < 4; i++)
    {
        TextDrawShowForPlayer(playerid, Textdraws[textdraw_PLAY][i]);
    }

    ServerPlayButton[playerid] = true;
    SelectTextDrawEx(playerid, PRIMARY_COLOR2);
    return 1;
}

stock HidePlayerPlayButton(playerid)
{
    for(new i = 0; i < 4; i++)
    {
        TextDrawHideForPlayer(playerid, Textdraws[textdraw_PLAY][i]);
    }

    ServerPlayButton[playerid] = false;
    CancelSelectTextDrawEx(playerid);
    return 1;
}

stock IsPlayerInPlayButton(playerid)
{
    return ServerPlayButton[playerid];
}

hook OnPlayerConnect(playerid)
{
    ServerPlayButton[playerid] = false;
}