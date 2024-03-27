//Includes
#include <YSI-Includes\YSI\y_hooks>

//Header
new DCC_Channel:Discord_Channels[1];
/* 
    0 = Global
*/

//Impl
SendGlobalMessageToDiscord(playerid, const message[], bool:anonym)
{
    new title[2000], content[2000], skin_url[70];
    if(anonym) format(title, 2000, "Telegram || [#:%d]", PI[playerid][pID]);
    else format(title, 2000, "Telegram || #%s (%d)", PLAYER_TEMP[playerid][pt_NAME], playerid);
    format(content, 2000, "```yaml\n%s```", message);

    format(skin_url, sizeof skin_url, SKIN_ASSETS, PI[playerid][pSKIN]);

    new DCC_Embed:GlobalMessage;
    GlobalMessage = DCC_CreateEmbed
    (
        title, 
        content, 
        "", 
        "", 
        1752220, 
        ""SERVER_NAME" - r"SERVER_VERSION"",
        skin_url
    );

    DCC_SendChannelEmbedMessage(Discord_Channels[0], GlobalMessage, "");
}


hook OnScriptInit()
{
    Discord_Channels[0] = DCC_FindChannelById("1205266103606185994");
}