//Includes
#include <YSI-Includes\YSI\y_hooks>

//Header
#define     GLOBAL_CHANNEL_ID   "1205266103606185994"
//#define     SELL_CHANNEL_ID     "1205266267796279327"

new DCC_Channel:Global_Channel_Discord;
//new DCC_Channel:Sell_Channel_Discord;

//Impl
callbackp:SendGlobalDiscordMessage(const tittle[], const message[], playerid)
{
    new DCC_Embed:GlobalMessage = DCC_CreateEmbed(tittle, message);
    DCC_SendChannelEmbedMessage(Global_Channel_Discord, GlobalMessage);
    return 1;
}

/*callbackp:SendSellDiscordMessage(const tittle[], const message[], playerid)
{
    new DCC_Embed:SellMessage = DCC_CreateEmbed(tittle, message);
    DCC_SendChannelEmbedMessage(Sell_Channel_Discord, SellMessage);
    return 1;
}*/

hook OnScriptInit()
{
    Global_Channel_Discord = DCC_FindChannelById(GLOBAL_CHANNEL_ID);
    //Sell_Channel_Discord = DCC_FindChannelById(SELL_CHANNEL_ID);
}