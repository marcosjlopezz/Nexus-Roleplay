//Includes
#include <YSI-Includes\YSI\y_hooks>

//Header
#define     GLOBAL_CHANNEL_ID   "1205266103606185994"
//#define     SELL_CHANNEL_ID     "1205266267796279327"

new DCC_Channel:Global_Channel_Discord;
//new DCC_Channel:Sell_Channel_Discord;

//Impl
stock SendGlobalDiscordMessage(const tittle[], const message[])
{
    new tittle_fixed[256], message_fixed[256]; format(tittle_fixed, 256, "%s", tittle); format(message_fixed, 256, "%s", message);
    
    new DCC_Embed:e_GlobalMessage; 
    e_GlobalMessage = DCC_CreateEmbed
    (
        tittle_fixed, 
        message_fixed, 
        "", 
        "", 
        1752220, 
        "", 
        "", 
        "", 
        ""
    );
    DCC_SendChannelEmbedMessage(Global_Channel_Discord, e_GlobalMessage, "");

    return 1;
}

/*stock SendSellDiscordMessage(const tittle[], const message[])
{
    new tittle_fixed[256], message_fixed[256]; format(tittle_fixed, 256, "%s", tittle); format(message_fixed, 256, "%s", message);
    
    new DCC_Embed:e_SellMessage; 
    e_SellMessage = DCC_CreateEmbed
    (
        tittle_fixed, 
        message_fixed, 
        "", 
        "", 
        1752220, 
        "", 
        "", 
        "", 
        ""
    );
    DCC_SendChannelEmbedMessage(Sell_Channel_Discord, e_SellMessage, "");
    return 1;
}*/

stock ConfigDiscordBot()
{
    Global_Channel_Discord = DCC_FindChannelById(GLOBAL_CHANNEL_ID);
    //Sell_Channel_Discord = DCC_FindChannelById(SELL_CHANNEL_ID);
    return 1;
}