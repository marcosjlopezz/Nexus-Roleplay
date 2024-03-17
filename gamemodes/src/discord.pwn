//Includes
#include <YSI-Includes\YSI\y_hooks>

//Header
#define     GLOBAL_CHANNEL_ID   "1205266103606185994"

new DCC_Channel:Global_Channel_Discord;

//Impl
stock SendGlobalDiscordMessage(const message[])
{   
    DCC_SendChannelMessage(Global_Channel_Discord, message);
    return 1;
}

stock ConfigDiscordBot()
{
    Global_Channel_Discord = DCC_FindChannelById(GLOBAL_CHANNEL_ID);
    return 1;
}