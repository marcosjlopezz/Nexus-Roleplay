#include <YSI-Includes\YSI\y_hooks>

new bool:GenderSelector[MAX_PLAYERS];

stock ShowPlayerGenderSelector(playerid)
{
    TextDrawHideForPlayer(playerid, Textdraws[textdraw_LOAD_SCREEN][2]);
	TextDrawHideForPlayer(playerid, Textdraws[textdraw_LOAD_SCREEN][3]);

    for(new i = 0; i < 10; i++)
    {
        TextDrawShowForPlayer(playerid, Textdraws[textdraw_GENDER][i]);
    }

    GenderSelector[playerid] = true;
    SelectTextDrawEx(playerid, -1);
    return 1;
}

stock HidePlayerGenderSelector(playerid)
{
    for(new i = 0; i < 10; i++)
    {
        TextDrawHideForPlayer(playerid, Textdraws[textdraw_GENDER][i]);
    }
    
    GenderSelector[playerid] = false;
    CancelSelectTextDrawEx(playerid);
    return 1;
}

stock IsPlayerInGenderSelector(playerid)
{
    return GenderSelector[playerid];
}

hook OnPlayerConnect(playerid)
{
    GenderSelector[playerid] = false;
}