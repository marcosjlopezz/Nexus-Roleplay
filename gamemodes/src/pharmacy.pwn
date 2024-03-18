/* 
    INFORMATION

    -- Dialogs
    DIALOG_PHARMACY
	DIALOG_PHARMACY_BUY_MEDICINE
	DIALOG_PHARMACY_MEDICINE_BUY
	DIALOG_PHARMACY_BUY_MEDIKITS

    -- Pickups
    PICKUP_TYPE_PHARMACY

    -- Timers
    pt_MEDICINE_TIMER

    -- Autor
    Discord: MarcosJLopezz
*/

//#define COME_INTERACTION_MESSAGE	"{"#PRIMARY_COLOR"}Acercate{ffffff} "

//Header

#include <YSI-Includes\YSI\y_hooks>

#define PHARMACY_MEDICINE_PRICE     150 //cada una
#define PHARMACY_MEDIKIT_PRICE      5000 //cada uno

#define MEDICINE_TIMER              1200 //segundos

new MedicineBuyCount[MAX_PLAYERS];
new Float:PharmacyBuyInfo[3] = {-425.3830, -1725.8013, 2244.3611};

//Impl

stock ShowPharmacyDialog(playerid, extra)
{
	PlayerTemp[playerid][pt_DIALOG_RESPONDED] = false;
	PlayerTemp[playerid][pt_DIALOG_ID] = extra;

    switch(extra)
    {
        case DIALOG_PHARMACY:
        {
            ShowPlayerDialog(playerid, extra, DIALOG_STYLE_TABLIST, "{ff0000}Farmacia{ffffff} - Comprar", "{d1d1d1}Comprar Medicamentos\t{"#GREEN_COLOR"}"#PHARMACY_MEDICINE_PRICE"$ c/u\n{d1d1d1}Comprar botiquin\t{"#GREEN_COLOR"}"#PHARMACY_MEDIKIT_PRICE"$\n", "Comprar", "Cerrar");
            return 1;
        }
        case DIALOG_PHARMACY_BUY_MEDICINE:
        {
            ShowPlayerDialog(playerid, extra, DIALOG_STYLE_INPUT, "{ff0000}Farmacia{ffffff} - Comprar Medicamentos", "{d1d1d1}Escribe la cantidad de medicamentos que quieres comprar:\n\n{d1d1d1}Recuerda que solo puedes comprar {ff000000}25 Medicamentos{d1d1d1} cada 20 minutos.\n", "Comprar", "Cerrar");
            return 1;
        }
        case DIALOG_PHARMACY_MEDICINE_BUY:
        {
            new dialog[512];
            format(dialog, sizeof(dialog), 
            "{d1d1d1}¿Estas seguro que quieres comprar {ff0000}%d medicamentos{d1d1d1} por {"#GREEN_COLOR"}%s${d1d1d1}?",
                MedicineBuyCount[playerid], (number_format_thousand((MedicineBuyCount[playerid] * PHARMACY_MEDICINE_PRICE)))
            );
            ShowPlayerDialog(playerid, extra, DIALOG_STYLE_MSGBOX, "{ff0000}Farmacia{ffffff} - Confirmar", dialog, "Comprar", "Cerrar");
            return 1;
        }
        case DIALOG_PHARMACY_BUY_MEDIKITS:
        {
            ShowPlayerDialog(playerid, extra, DIALOG_STYLE_MSGBOX, "{ff0000}Farmacia{ffffff} - Comprar Botiquin", "{d1d1d1}¿Estas seguro que quieres comprar un botiquin por {"#GREEN_COLOR"}"#PHARMACY_MEDIKIT_PRICE"${d1d1d1}?", "Comprar", "Cerrar");
            return 1;
        }
        default: return 0;
    }
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DIALOG_PHARMACY:
        {
            if(response)
            {
                switch(listitem)
                {
                    case 0:
                    {
                        if(gettime() < PlayerTemp[playerid][pt_MEDICINE_TIMER] + MEDICINE_TIMER)
                        {
                            new time = (MEDICINE_TIMER-(gettime()-PlayerTemp[playerid][pt_MEDICINE_TIMER]));
                            SendClientMessagef(playerid, 0xCCCCCCCC, "Tienes que esperar %s minutos para volver a comprar mas medicamentos.", TimeConvert(time));
                            ShowPharmacyDialog(playerid, DIALOG_PHARMACY);
                            return 1;
                        }
                        ShowPharmacyDialog(playerid, DIALOG_PHARMACY_BUY_MEDICINE);
                    }
                    case 1: ShowPharmacyDialog(playerid, DIALOG_PHARMACY_BUY_MEDIKITS);
                }
            }
            return Y_HOOKS_BREAK_RETURN_1;
        }
        case DIALOG_PHARMACY_BUY_MEDICINE:
        {
            if(response)
            {
                if(sscanf(inputtext, "d", MedicineBuyCount[playerid]))
                {
                    ShowPharmacyDialog(playerid, DIALOG_PHARMACY_BUY_MEDICINE);
                    SendMessage(playerid, "Debes escribir una cantidad valida.");
                    return 1;
                }
                if(MedicineBuyCount[playerid] <= 0)
                {
                    ShowPharmacyDialog(playerid, DIALOG_PHARMACY_BUY_MEDICINE);
                    SendMessage(playerid, "Escribe un valor positivo.");
                    return 1;
                }
                if(MedicineBuyCount[playerid] > 25) MedicineBuyCount[playerid] = 25;

                ShowPharmacyDialog(playerid, DIALOG_PHARMACY_MEDICINE_BUY);
            }
            return Y_HOOKS_BREAK_RETURN_1;
        }
        case DIALOG_PHARMACY_MEDICINE_BUY:
        {
            if(response)
            {
                new price = (MedicineBuyCount[playerid] * PHARMACY_MEDICINE_PRICE);
                if(price <= 0) return 0;

                if(GivePlayerCash(playerid, price, true, true))
                {
                    SendInfoMessagef(playerid, "~r~Farmacia~w~~n~~n~Has comprado %d medicamentos~n~~n~Precio: ~g~%s$~w~.", MedicineBuyCount[playerid], number_format_thousand(price));
                    PI[playerid][pMEDICINE] += MedicineBuyCount[playerid];
                    pTemp(playerid)[pt_MEDICINE_TIMER] = gettime();
                    MedicineBuyCount[playerid] = 0;
                }
                else SendMessage(playerid, "No tienes el dinero suficiente para comprar estos medicamentos.");
            }
            return Y_HOOKS_BREAK_RETURN_1;
        }
        case DIALOG_PHARMACY_BUY_MEDIKITS:
        {
            if(response)
            {
                if(GivePlayerCash(playerid, -PHARMACY_MEDIKIT_PRICE, true, true)) 
                {
                    PI[playerid][pMEDICAL_KITS] += 1;
                    SendInfoMessagef(playerid, "~r~Farmacia~n~~n~~w~Has comprado un ~r~botiquín~w~, para usarlo escribe ~y~/curar~w~ cerca de la persona que quieras curar.");
                }
                else SendClientMessagef(playerid, 0xCCCCCCCC, "No tienes suficiente dinero.");
            }
            return Y_HOOKS_BREAK_RETURN_1;
        }
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}

hook OnScriptInit()
{
    //clear
    LoopEx(i, MAX_PLAYERS, 0) MedicineBuyCount[i] = 0;

    //Info
    CreateDynamic3DTextLabel("Farmacia\n"COME_INTERACTION_MESSAGE"para comprar", 0xFF0000FF, PharmacyBuyInfo[0], PharmacyBuyInfo[1], PharmacyBuyInfo[2], 15.0, .testlos = true);
    new info[1], pharmacy_pickupid = CreateDynamicPickup(0, 1, PharmacyBuyInfo[0], PharmacyBuyInfo[1], PharmacyBuyInfo[2]);
	info[0] = PICKUP_TYPE_PHARMACY;
	Streamer_SetArrayData(STREAMER_TYPE_PICKUP, pharmacy_pickupid, E_STREAMER_EXTRA_ID, info);	
}