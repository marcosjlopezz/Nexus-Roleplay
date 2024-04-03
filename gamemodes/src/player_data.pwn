#include <YSI-Includes\YSI\y_hooks>

stock ClearPlayerTempData(playerid)
{
    pTemp(playerid)[pt_GAME_STATE] = 0;
    pTemp(playerid)[pt_NAME] = 0;
    pTemp(playerid)[pt_IP] = 0;
    pTemp(playerid)[pt_USER_EXIST] = false;
    pTemp(playerid)[pt_USER_LOGGED] = false;
    pTemp(playerid)[pt_ANTIFLOOD_COMMANDS] = 0;
    pTemp(playerid)[pt_ANTIFLOOD_TALK] = 0;
    pTemp(playerid)[pt_TIMERS] = 0;
    pTemp(playerid)[pt_USER_VALID_NAME] = false;
    pTemp(playerid)[pt_BAD_LOGIN_ATTEMP] = 0;
    pTemp(playerid)[pt_DOUBT_CHANNEL_TIME] = 0;
    pTemp(playerid)[pt_LAST_PICKUP_ID] = 0;
    pTemp(playerid)[pt_LAST_AREA_ID] = 0;
    pTemp(playerid)[pt_TIME_PASSED_LAST_REP] = 0;
    pTemp(playerid)[pt_INTERIOR_INDEX] = 0;
    pTemp(playerid)[pt_CLOTHING_SHOP] = 0;
    pTemp(playerid)[pt_CLOTHING_SHOP_SELECTED_SKIN] = 0;
    pTemp(playerid)[pt_SELECT_TEXTDRAW] = false;
    pTemp(playerid)[pt_HUD_TEXTDRAWS] = false;
    pTemp(playerid)[pt_THIRST_MESSAGE] = false;
    pTemp(playerid)[pt_HUNGRY_MESSAGE] = false;
    pTemp(playerid)[pt_SELECT_BANK_TRANSFER_ACCOUNT] = 0;
    pTemp(playerid)[pt_SELECT_BANK_TRANSFER_ID] = 0;
    pTemp(playerid)[pt_PLAYER_IN_ATM] = false;
    pTemp(playerid)[pt_PLAYER_IN_CALL] = false;
    pTemp(playerid)[pt_PLAYER_PHONE_CALL_STATE] = false;
    pTemp(playerid)[pt_PLAYER_PHONE_CALL_PLAYERID] = false;
    Loop(i, MAX_LISTITEMS, 0) pTemp(playerid)[pt_PLAYER_LISTITEM][i] = 0;
    pTemp(playerid)[pt_PLAYER_PHONE_BOOK_ADD_NUMBER] = 0;
    pTemp(playerid)[pt_PLAYER_PHONE_BOOK_SELECTED] = 0;
    pTemp(playerid)[pt_PLAYER_PHONE_NUMBER_SELECTED] = 0;
    pTemp(playerid)[pt_BUY_HOUSE_INDEX] = 0;
    pTemp(playerid)[pt_ANTIFLOOD_KNOCK_PROPERTY] = 0;
    pTemp(playerid)[pt_KNOCK_PLAYER_ID] = 0;
    pTemp(playerid)[pt_GPS_CHECKPOINT] = 0;
    pTemp(playerid)[pt_GPS_PLAYER_SELECTED] = 0;
    pTemp(playerid)[pt_PLAYER_GPS_SELECTED_PROPERTY] = 0;
    pTemp(playerid)[pt_PLAYER_PROPERTY_SELECTED] = 0;
    pTemp(playerid)[pt_MUSIC_FOR_PROPERTY] = false;
    pTemp(playerid)[pt_MUSIC_FOR_VEHICLE] = false;
    pTemp(playerid)[pt_SELECTED_BUY_VEHICLE_ID] = 0;
    pTemp(playerid)[pt_LAST_VEHICLE_ID] = 0;
    pTemp(playerid)[pt_NOTARY_OPTION] = 0;
    pTemp(playerid)[pt_NOTARY_PRICE] = 0;
    pTemp(playerid)[pt_NOTARY_TO_PLAYER] = 0;
    pTemp(playerid)[pt_PLAYER_VEHICLE_SELECTED] = 0;
    pTemp(playerid)[pt_TAXI_METER_ENABLED] = false;
    pTemp(playerid)[pt_WANT_TAXI] = false;
    pTemp(playerid)[pt_TRUCK_LOADING_VALUE] = 0;
    pTemp(playerid)[pt_TRUCK_CHECKPOINT] = 0;
    pTemp(playerid)[pt_TUNING_SELECTED_PART] = 0;
    pTemp(playerid)[pt_TUNING_SELECTED_COMPONENT] = 0;
    pTemp(playerid)[pt_TUNING_SELECTED_COMPONENT_ID] = 0;
    pTemp(playerid)[pt_TUNING_SELECTED_PIECES] = 0;
    pTemp(playerid)[pt_PAINTJOB_SELECTED_ID] = 0;
    pTemp(playerid)[pt_WORKING_IN] = 0;
    pTemp(playerid)[pt_SELECTED_MECHANIC_VEHICLE_ID] = 0;
    pTemp(playerid)[pt_MECHANIC_COLOR_SLOT] = 0;
    pTemp(playerid)[pt_HARVERT_CHECKPOINT] = 0;
    pTemp(playerid)[pt_HARVERT_PROCCESS] = 0;
    pTemp(playerid)[pt_PIZZA_CHECKPOINT] = 0;
    pTemp(playerid)[pt_TRASH_DRIVER] = false;
    pTemp(playerid)[pt_TRASH_PASSENGER] = false;
    pTemp(playerid)[pt_TRASH_VEHICLE_ID] = 0;
    pTemp(playerid)[pt_TRASH_CHECKPOINT] = 0;
    pTemp(playerid)[pt_RECYCLE_BIN_VALUE] = 0;
    pTemp(playerid)[pt_PLAYER_CARRYING_TREE] = false;
    pTemp(playerid)[pt_PLAYER_LUMBERJACK_TREE] = 0;
    pTemp(playerid)[pt_LUMBERJACK_CHECKPOINT] = 0;
    pTemp(playerid)[pt_LAST_GOT_WORK_TIME] = 0;
    pTemp(playerid)[pt_LAST_GIVE_MONEY_TIME] = 0;
    pTemp(playerid)[pt_SELECTED_BUY_SEED_ID] = 0;
    pTemp(playerid)[pt_PLANTING] = false;
    pTemp(playerid)[pt_PLANTING_PLANT_SELECTED] = 0;
    pTemp(playerid)[pt_PROPERTY_INDEX] = false;
    pTemp(playerid)[pt_KICKED] = false;
    pTemp(playerid)[pt_SELECTED_DIALOG_WEAPON_SLOT] = 0;
    pTemp(playerid)[pt_TRICK_SELLER_PID] = 0;
    pTemp(playerid)[pt_TRICK_SELLER_AID] = 0;
    pTemp(playerid)[pt_TRICK_SELLER_EXTRA] = 0;
    pTemp(playerid)[pt_TRICK_PRICE] = 0;
    pTemp(playerid)[pt_TRICK_TIME] = 0;
    pTemp(playerid)[pt_DIALOG_BOT_VEHICLE] = 0;
    pTemp(playerid)[pt_DIALOG_BOT_VEHICLE_BOOT_SLOT] = 0;
    pTemp(playerid)[pt_POLICE_RADIO] = 0;
    pTemp(playerid)[pt_CUFFING] = false;
    pTemp(playerid)[pt_CUFFED] = false;
    pTemp(playerid)[pt_ENTER_JAIL_TIME] = 0;
    pTemp(playerid)[pt_DIALOG_DB_LIMIT] = 0;
    pTemp(playerid)[pt_DIALOG_DB_PAGE] = 0;
    pTemp(playerid)[pt_SELECTED_DB_AC_ID] = 0;
    pTemp(playerid)[pt_POLICE_CALL_NAME] = false;
    pTemp(playerid)[pt_POLICE_CALL_DESCRIPTION] = false;
    pTemp(playerid)[pt_POLICE_CALL_NAME_STR] = 0;
    pTemp(playerid)[pt_ANTIFLOOD_REPORT] = 0;
    pTemp(playerid)[pt_SEE_ACMD_LOG] = false;
    pTemp(playerid)[pt_SEE_ADM_LOG] = false;
    pTemp(playerid)[pt_SEE_ADM_CHAT] = false;
    pTemp(playerid)[pt_LAST_CHEAT_DETECTED_TIME] = 0;
    pTemp(playerid)[pt_SEE_AC_LOG] = false;
    pTemp(playerid)[pt_ANTIFLOOD_DEATH] = 0;
    pTemp(playerid)[pt_ANTIFLOOD_STATE] = 0;
    pTemp(playerid)[pt_ANTIFLOOD_ENTER_VEHICLE] = 0;
    pTemp(playerid)[pt_SELECTED_AC_LISTITEM] = 0;
    pTemp(playerid)[pt_ADMIN_PM_PID] = 0;
    pTemp(playerid)[pt_ADMIN_PM_AID] = 0;
    pTemp(playerid)[pt_ADMIN_PM_TIME] = 0;
    pTemp(playerid)[pt_MECHANIC_PID] = 0;
    pTemp(playerid)[pt_MECHANIC_AID] = 0;
    pTemp(playerid)[pt_MECHANIC_PRICE] = 0;
    pTemp(playerid)[pt_MECHANIC_TEXT] = 0;
    pTemp(playerid)[pt_MECHANIC_TYPE] = 0;
    pTemp(playerid)[pt_MECHANIC_EXTRA] = 0;
    pTemp(playerid)[pt_MECHANIC_VEHICLE_ID] = 0;
    pTemp(playerid)[pt_MECHANIC_PIECES] = 0;
    pTemp(playerid)[pt_MECHANIC_TIME] = 0;
    pTemp(playerid)[pt_MECHANIC_SELECTED_COLOR] = 0;
    pTemp(playerid)[pt_MECHANIC_SELECTED_COMPONENT] = 0;
    pTemp(playerid)[pt_VIRTUAL_WORLD] = 0;
    pTemp(playerid)[pt_PLAYER_SPECTATE] = false;
    pTemp(playerid)[pt_PIZZA_PROCCESS] = 0;
    pTemp(playerid)[pt_DELIVERED_PIZZAS] = 0;
    pTemp(playerid)[pt_PIZZA_ACTOR] = 0;
    pTemp(playerid)[pt_LAST_PLANT_TIME] = 0;
    pTemp(playerid)[pt_LAST_SET_WANTED_LEVEL] = 0;
    pTemp(playerid)[pt_CREATE_CREW_NAME] = 0;
    pTemp(playerid)[pt_CREATE_CREW_COLOR] = 0;
    pTemp(playerid)[pt_CREW_INVITE_PID] = 0;
    pTemp(playerid)[pt_CREW_INVITE_AID] = 0;
    pTemp(playerid)[pt_CREW_INVITE_INFO] = 0;
    pTemp(playerid)[pt_CREW_SELECTED_RANK] = 0;
    pTemp(playerid)[pt_CREW_SELECTED_NEW_RANK] = 0;
    pTemp(playerid)[pt_LAST_TERRITORY] = 0;
    pTemp(playerid)[pt_PLAYER_TERRITORY_PRO] = 0;
    pTemp(playerid)[pt_PLAYER_COLOR] = 0;
    pTemp(playerid)[pt_LAST_GOT_CREW] = 0;
    pTemp(playerid)[pt_POLICE_PEN_PID] = 0;
    pTemp(playerid)[pt_POLICE_PEN_AID] = 0;
    pTemp(playerid)[pt_POLICE_PEN_IM] = 0;
    pTemp(playerid)[pt_POLICE_PEN_TIME] = 0;
    pTemp(playerid)[pt_LAST_VIP_CHECK] = 0;
    pTemp(playerid)[pt_LAST_SHOT_ROBBERY] = 0;
    Loop(i, 24, 0) pTemp(playerid)[pt_PASSWD][i] = 0;
    pTemp(playerid)[pt_CONTROL] = false;
    pTemp(playerid)[pt_SELECTING_STYLE] = 0;
    pTemp(playerid)[pt_SELECTED_STYLE] = 0;
    Loop(i, 4, 0) pTemp(playerid)[pt_PROPERTY_CINFO][i] = 0;
    pTemp(playerid)[pt_CJ_WARNINGS] = 0;
    Loop(i, 24, 0) pTemp(playerid)[pt_FIRST_NAME][i] = 0;
    Loop(i, 24, 0) pTemp(playerid)[pt_SUB_NAME][i] = 0;
    pTemp(playerid)[pt_ADMIN_SERVICE] = false;
    pTemp(playerid)[pt_LAST_SAFE_ZONE_WARNING] = 0;
    pTemp(playerid)[pt_SELECTED_POLICE_OBJECT_INDEX] = 0;
    pTemp(playerid)[pt_SELECTED_BYC_ID] = 0;
    pTemp(playerid)[pt_SELECTED_BYC_USER_ID] = 0;
    pTemp(playerid)[pt_DIALOG_RESPONDED] = false;
    pTemp(playerid)[pt_DIALOG_ID] = 0;
    pTemp(playerid)[pt_DL_EXAM] = false;
    pTemp(playerid)[pt_DL_EXAM_CP] = 0;
    pTemp(playerid)[pt_DL_EXAM_PROCCESS] = 0;
    pTemp(playerid)[pt_COOLDOWN_MEDICINE] = 0;
    pTemp(playerid)[pt_COOLDOWN_CRACK] = 0;
    pTemp(playerid)[pt_COOLDOWN_WEED] = 0;
    pTemp(playerid)[pt_SELECTED_OBJECT] = 0;
    pTemp(playerid)[pt_DIALOG_CLOSET_PROPERTY] = 0;
    pTemp(playerid)[pt_DIALOG_CLOSET_PROPERTY_SLOT] = 0;
    pTemp(playerid)[pt_CLASSED] = false;
    pTemp(playerid)[pt_CREW_INDEX] = 0;
    pTemp(playerid)[pt_REQUEST_HELP] = false;
    pTemp(playerid)[pt_COMBAT] = false;
    pTemp(playerid)[pt_COMBAT_TIMER] = 0;
    pTemp(playerid)[pt_LAST_VEHICLE_DESTROY] = 0;
    pTemp(playerid)[pt_LOGIN_KICK_TIMER] = 0;
    pTemp(playerid)[pt_COOLDOWN_MEDICAL_KIT] = 0;
    Loop(i, 4, 0) pTemp(playerid)[pt_INJURED_POS][i] = 0;
    pTemp(playerid)[pt_PICKUP_TIMER] = 0;
    pTemp(playerid)[pt_DIALOG_OPENED] = false;
    pTemp(playerid)[pt_LAST_PICKUP_CHECKED] = 0;
	pTemp(playerid)[pt_GLOBAL_TIMER] = 0;
	pTemp(playerid)[pt_INVENTORY_SELECTED_PLAYER] = 0;
	pTemp(playerid)[pt_INVENTORY_PLAYERID] = 0;
	pTemp(playerid)[pt_POCKET_SLOT_SELECTED] = 0;
	pTemp(playerid)[pt_INVENTORY_POCKET_TYPE] = 0;
	pTemp(playerid)[pt_INVENTORY_POCKET_OPTION] = 0;
	pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_0] = 0;
	pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_1] = 0;
	pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_2] = 0;
	pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_3] = 0;
	pTemp(playerid)[pt_INVENTORY_POCKET_EXTRA_4] = 0;
	pTemp(playerid)[pt_ELEVATOR_INDEX] = 0;
	pTemp(playerid)[pt_ELEVATOR_OPTION] = 0;
    return 1;
}