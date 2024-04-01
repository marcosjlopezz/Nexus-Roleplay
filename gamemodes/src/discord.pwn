//Includes
#include <YSI-Includes\YSI\y_hooks>

//Header
new DCC_Channel:Discord_Channels[11];
/* 
    0 = Global Channel
    1 = Jails
    2 = mutes
    3 = ban
    4 = unban
    5 = adv
    6 = kick
    7 = admin chat
    8 = anticheat
    9 = coins
    10 = Verify Channel
*/

new DCC_Guild:Discord_Servers[2];
/* 
    0 = Comunity
    1 = Administration
*/

new DCC_Role:Discord_Roles[1];
/* 
    0 = No Verificado
*/

/* 
    SERVER INFO

    Comunity: 1176691877249032243
    Administration: 1179858986892267520

*/

//Impl
SendGlobalMessageToDiscord(playerid, const message[], bool:anonym)
{
    new title[2000], content[2000], skin_url[70];
    if(anonym) format(title, 2000, "Telegram || `[#:%d]`", PI[playerid][pID]);
    else format(title, 2000, "Telegram || #%s (%d)", PLAYER_TEMP[playerid][pt_NAME], playerid);
    format(content, 2000, "```yaml\n%s```", message);

    format(skin_url, sizeof skin_url, SKIN_ASSETS, GetPlayerSkin(playerid));

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

SendJailLogMessage(playerid, const message[])
{
    new title[2000], content[2000];
    format(title, 2000, ":key: %s (%d) - [DB-ID: %d]", PI[playerid][pNAME], playerid, PI[playerid][pID]);
    format(content, 2000, "```yaml\n%s```", message);

    new DCC_Embed:Log_Embed;
    Log_Embed = DCC_CreateEmbed
    (
        title, 
        content, 
        "", 
        "", 
        0, 
        ""SERVER_NAME" - r"SERVER_VERSION""
    );

    DCC_SendChannelEmbedMessage(Discord_Channels[1], Log_Embed, "");
}

SendMuteLogMessage(playerid, const message[])
{
    new title[2000], content[2000];
    format(title, 2000, ":key: %s (%d) - [DB-ID: %d]", PI[playerid][pNAME], playerid, PI[playerid][pID]);
    format(content, 2000, "```yaml\n%s```", message);

    new DCC_Embed:Log_Embed;
    Log_Embed = DCC_CreateEmbed
    (
        title, 
        content, 
        "", 
        "", 
        0, 
        ""SERVER_NAME" - r"SERVER_VERSION""
    );

    DCC_SendChannelEmbedMessage(Discord_Channels[2], Log_Embed, "");
}

SendBanLogMessage(playerid, const message[])
{
    new title[2000], content[2000];
    format(title, 2000, ":key: %s (%d) - [DB-ID: %d]", PI[playerid][pNAME], playerid, PI[playerid][pID]);
    format(content, 2000, "```yaml\n%s```", message);

    new DCC_Embed:Log_Embed;
    Log_Embed = DCC_CreateEmbed
    (
        title, 
        content, 
        "", 
        "", 
        0, 
        ""SERVER_NAME" - r"SERVER_VERSION""
    );

    DCC_SendChannelEmbedMessage(Discord_Channels[3], Log_Embed, "");
}

SendUnBanLogMessage(playerid, const message[])
{
    new title[2000], content[2000];
    format(title, 2000, ":key: %s (%d) - [DB-ID: %d]", PI[playerid][pNAME], playerid, PI[playerid][pID]);
    format(content, 2000, "```yaml\n%s```", message);

    new DCC_Embed:Log_Embed;
    Log_Embed = DCC_CreateEmbed
    (
        title, 
        content, 
        "", 
        "", 
        0, 
        ""SERVER_NAME" - r"SERVER_VERSION""
    );

    DCC_SendChannelEmbedMessage(Discord_Channels[4], Log_Embed, "");
}

SendAdvLogMessage(playerid, const message[])
{
    new title[2000], content[2000];
    format(title, 2000, ":key: %s (%d) - [DB-ID: %d]", PI[playerid][pNAME], playerid, PI[playerid][pID]);
    format(content, 2000, "```yaml\n%s```", message);

    new DCC_Embed:Log_Embed;
    Log_Embed = DCC_CreateEmbed
    (
        title, 
        content, 
        "", 
        "", 
        0, 
        ""SERVER_NAME" - r"SERVER_VERSION""
    );

    DCC_SendChannelEmbedMessage(Discord_Channels[5], Log_Embed, "");
}

SendKickLogMessage(playerid, const message[])
{
    new title[2000], content[2000];
    format(title, 2000, ":key: %s (%d) - [DB-ID: %d]", PI[playerid][pNAME], playerid, PI[playerid][pID]);
    format(content, 2000, "```yaml\n%s```", message);

    new DCC_Embed:Log_Embed;
    Log_Embed = DCC_CreateEmbed
    (
        title, 
        content, 
        "", 
        "", 
        0, 
        ""SERVER_NAME" - r"SERVER_VERSION""
    );

    DCC_SendChannelEmbedMessage(Discord_Channels[6], Log_Embed, "");
}

SendAdminChatLogMessage(playerid, const message[])
{
    new title[2000], content[2000];
    format(title, 2000, ":key: %s (%d) - [DB-ID: %d]", PI[playerid][pNAME], playerid, PI[playerid][pID]);
    format(content, 2000, "```yaml\n%s```", message);

    new DCC_Embed:Log_Embed;
    Log_Embed = DCC_CreateEmbed
    (
        title, 
        content, 
        "", 
        "", 
        0, 
        ""SERVER_NAME" - r"SERVER_VERSION""
    );

    DCC_SendChannelEmbedMessage(Discord_Channels[7], Log_Embed, "");
}

SendAntiCheatLogMessage(const message[])
{
    new content[2000];
    format(content, 2000, "```yaml\n%s```", message);

    new DCC_Embed:Log_Embed;
    Log_Embed = DCC_CreateEmbed
    (
        ":key: AntiCheat", 
        content, 
        "", 
        "", 
        0, 
        ""SERVER_NAME" - r"SERVER_VERSION""
    );

    DCC_SendChannelEmbedMessage(Discord_Channels[8], Log_Embed, "");
}

SendCoinsLogMessage(playerid, const message[])
{
    new title[2000], content[2000];
    format(title, 2000, ":key: %s (%d) - [DB-ID: %d]", PI[playerid][pNAME], playerid, PI[playerid][pID]);
    format(content, 2000, "```yaml\n%s```", message);

    new DCC_Embed:Log_Embed;
    Log_Embed = DCC_CreateEmbed
    (
        title, 
        content, 
        "", 
        "", 
        0, 
        ""SERVER_NAME" - r"SERVER_VERSION""
    );

    DCC_SendChannelEmbedMessage(Discord_Channels[9], Log_Embed, "");
}

stock UpdatePlayerDiscordName(playerid)
{
    new DCC_User:user = DCC_FindUserById(PI[playerid][pDISCORD_USERID]);
    new NickNameFormat[445]; format(NickNameFormat, 445, "%s | DB-ID: %d", PI[playerid][pNAME], PI[playerid][pID]);
    DCC_SetGuildMemberNickname(Discord_Servers[0], user, NickNameFormat);
}

DCMD:ingresar(user, channel, params[])
{
    new name[24], password[MAX_PASS_LENGTH], pass_ex[65];
    if(!sscanf(params, "s[24]s[18]", name, password))
    {
        SHA256_PassHash(password, "SampWorld", pass_ex, 64);

        inline OnPlayerLoginDiscord()
        {
            new rows;
            if(cache_get_row_count(rows))
            {
                if(rows)
                {
                    new DiscordUserID[DCC_ID_SIZE];
                    DCC_GetUserId(user, DiscordUserID);

                    new id, playername[24], connected, db_discord_userid[DCC_ID_SIZE];
                    cache_get_value_name_int(0, "id", id);
                    cache_get_value_name_int(0, "connected", connected);
                    cache_get_value_name(0, "name", playername, 24);
                    cache_get_value_name(0, "discord_userid", db_discord_userid, DCC_ID_SIZE);
                    
                    if(connected) return DCC_SendChannelMessage(channel, ":x: Para realizar esta operacion debes hacerlo desconectado del servidor!");

                    new DCC_User:OldUser = DCC_FindUserById(db_discord_userid);
                    DCC_SetGuildMemberNickname(Discord_Servers[0], OldUser, "");
                    DCC_AddGuildMemberRole(Discord_Servers[0], OldUser, Discord_Roles[0]);

                    new NickNameFormat[445]; format(NickNameFormat, 445, "%s | DB-ID: %d", playername, id);
                    DCC_SetGuildMemberNickname(Discord_Servers[0], user, NickNameFormat);
                    DCC_RemoveGuildMemberRole(Discord_Servers[0], user, Discord_Roles[0]);

                    DCC_SendChannelMessage(channel, ":white_check_mark: has ingresado correctamente! Recuerda eliminar el mensaje :) para mayor seguridad.");

                    mysql_format(handle_db, QUERY_BUFFER, sizeof QUERY_BUFFER, "UPDATE player SET discord_userid = '%e' WHERE id = %d;", DiscordUserID, id);
                    mysql_tquery(handle_db, QUERY_BUFFER);
                }
                else
                {
                    DCC_SendChannelMessage(channel, ":x: Datos no encontrados!");
                }
            }
        }
        mysql_format(handle_db, QUERY_BUFFER, sizeof QUERY_BUFFER, "SELECT name, id, connected, discord_userid FROM player WHERE name = '%e' AND pass = '%e';", name, pass_ex);
        mysql_tquery_inline(handle_db, QUERY_BUFFER, using inline OnPlayerLoginDiscord);
    }
    else DCC_SendChannelMessage(channel, ":x: Datos no encontrados!");
    return 1;
}

hook OnScriptInit()
{
    Discord_Servers[0] = DCC_FindGuildById("1176691877249032243");
    Discord_Servers[1] = DCC_FindGuildById("1179858986892267520");
    Discord_Channels[0] = DCC_FindChannelById("1205266103606185994");

    Discord_Channels[1] = DCC_FindChannelById("1222618389873295381");
    Discord_Channels[2] = DCC_FindChannelById("1222618402716385371");
    Discord_Channels[3] = DCC_FindChannelById("1222618422282686555");
    Discord_Channels[4] = DCC_FindChannelById("1222618436040130642");
    Discord_Channels[5] = DCC_FindChannelById("1222618448111341699");
    Discord_Channels[6] = DCC_FindChannelById("1222618463336529990");
    Discord_Channels[7] = DCC_FindChannelById("1222618482152181790");
    Discord_Channels[8] = DCC_FindChannelById("1222618514297323531");
    Discord_Channels[9] = DCC_FindChannelById("1222633114174492742");
    Discord_Channels[10] = DCC_FindChannelById("1205251137725538355");

    Discord_Roles[0] = DCC_FindRoleById("1205249231401779271");

    DCC_SetBotNickname(Discord_Servers[0], SERVER_NAME);
    DCC_SetBotNickname(Discord_Servers[1], SERVER_NAME);
}