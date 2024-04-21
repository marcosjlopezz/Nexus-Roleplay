#include <YSI-Includes\YSI\y_hooks>

new Text:ToyEditor_TD[13];
new PlayerText:ToyEditor_PTD[MAX_PLAYERS][2] = {{PlayerText:INVALID_TEXT_DRAW, ...}, ...};

stock CreatePlayerToyEditor(playerid)
{
    ToyEditor_PTD[playerid][0] = CreatePlayerTextDraw(playerid, 145.000, 323.000, "Linea #1~n~Linea #2~n~Linea #3");
    PlayerTextDrawLetterSize(playerid, ToyEditor_PTD[playerid][0], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ToyEditor_PTD[playerid][0], 1000.000, 1000.000);
    PlayerTextDrawAlignment(playerid, ToyEditor_PTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, ToyEditor_PTD[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, ToyEditor_PTD[playerid][0], 1);
    PlayerTextDrawSetOutline(playerid, ToyEditor_PTD[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, ToyEditor_PTD[playerid][0], 150);
    PlayerTextDrawFont(playerid, ToyEditor_PTD[playerid][0], 2);
    PlayerTextDrawSetProportional(playerid, ToyEditor_PTD[playerid][0], 1);

    ToyEditor_PTD[playerid][1] = CreatePlayerTextDraw(playerid, 146.000, 109.000, "_");
    PlayerTextDrawTextSize(playerid, ToyEditor_PTD[playerid][1], 185.000, 187.000);
    PlayerTextDrawAlignment(playerid, ToyEditor_PTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, ToyEditor_PTD[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, ToyEditor_PTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ToyEditor_PTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ToyEditor_PTD[playerid][1], 0);
    PlayerTextDrawFont(playerid, ToyEditor_PTD[playerid][1], 5);
    PlayerTextDrawSetProportional(playerid, ToyEditor_PTD[playerid][1], 0);
    PlayerTextDrawSetPreviewModel(playerid, ToyEditor_PTD[playerid][1], 1899);
    PlayerTextDrawSetPreviewRot(playerid, ToyEditor_PTD[playerid][1], 75.000, 0.000, 45.000, 0.550);
    PlayerTextDrawSetPreviewVehCol(playerid, ToyEditor_PTD[playerid][1], 0, 0);
}

stock CreateToyTextdraws()
{
    ToyEditor_TD[0] = TextDrawCreate(320.000, 80.000, "Background");
    TextDrawLetterSize(ToyEditor_TD[0], 0.000, 35.000);
    TextDrawTextSize(ToyEditor_TD[0], 0.000, 365.000);
    TextDrawAlignment(ToyEditor_TD[0], 2);
    TextDrawColor(ToyEditor_TD[0], -1);
    TextDrawUseBox(ToyEditor_TD[0], 1);
    TextDrawBoxColor(ToyEditor_TD[0], 252645375);
    TextDrawSetShadow(ToyEditor_TD[0], 1);
    TextDrawSetOutline(ToyEditor_TD[0], 1);
    TextDrawBackgroundColor(ToyEditor_TD[0], 150);
    TextDrawFont(ToyEditor_TD[0], 1);
    TextDrawSetProportional(ToyEditor_TD[0], 1);

    ToyEditor_TD[1] = TextDrawCreate(320.000, 80.000, "Background");
    TextDrawLetterSize(ToyEditor_TD[1], 0.000, 2.000);
    TextDrawTextSize(ToyEditor_TD[1], 0.000, 365.000);
    TextDrawAlignment(ToyEditor_TD[1], 2);
    TextDrawColor(ToyEditor_TD[1], -1);
    TextDrawUseBox(ToyEditor_TD[1], 1);
    TextDrawBoxColor(ToyEditor_TD[1], 255);
    TextDrawSetShadow(ToyEditor_TD[1], 1);
    TextDrawSetOutline(ToyEditor_TD[1], 1);
    TextDrawBackgroundColor(ToyEditor_TD[1], 150);
    TextDrawFont(ToyEditor_TD[1], 1);
    TextDrawSetProportional(ToyEditor_TD[1], 1);

    ToyEditor_TD[2] = TextDrawCreate(494.000, 75.000, "X");
    TextDrawLetterSize(ToyEditor_TD[2], 0.600, 2.600);
    TextDrawTextSize(ToyEditor_TD[2], 20.000, 25.000);
    TextDrawAlignment(ToyEditor_TD[2], 2);
    TextDrawColor(ToyEditor_TD[2], -1);
    TextDrawSetShadow(ToyEditor_TD[2], 0);
    TextDrawSetOutline(ToyEditor_TD[2], 0);
    TextDrawBackgroundColor(ToyEditor_TD[2], 150);
    TextDrawFont(ToyEditor_TD[2], 2);
    TextDrawSetProportional(ToyEditor_TD[2], 1);
    TextDrawSetSelectable(ToyEditor_TD[2], 1);

    ToyEditor_TD[3] = TextDrawCreate(273.000, 75.000, "Comprar Accesorios");
    TextDrawLetterSize(ToyEditor_TD[3], 0.600, 2.600);
    TextDrawTextSize(ToyEditor_TD[3], 1000.000, 1000.000);
    TextDrawAlignment(ToyEditor_TD[3], 2);
    TextDrawColor(ToyEditor_TD[3], -1);
    TextDrawSetShadow(ToyEditor_TD[3], 0);
    TextDrawSetOutline(ToyEditor_TD[3], 0);
    TextDrawBackgroundColor(ToyEditor_TD[3], 150);
    TextDrawFont(ToyEditor_TD[3], 2);
    TextDrawSetProportional(ToyEditor_TD[3], 1);

    ToyEditor_TD[4] = TextDrawCreate(238.000, 113.000, "Background");
    TextDrawLetterSize(ToyEditor_TD[4], 0.000, 20.000);
    TextDrawTextSize(ToyEditor_TD[4], 0.000, 180.000);
    TextDrawAlignment(ToyEditor_TD[4], 2);
    TextDrawColor(ToyEditor_TD[4], -1);
    TextDrawUseBox(ToyEditor_TD[4], 1);
    TextDrawBoxColor(ToyEditor_TD[4], -2139062017);
    TextDrawSetShadow(ToyEditor_TD[4], 1);
    TextDrawSetOutline(ToyEditor_TD[4], 1);
    TextDrawBackgroundColor(ToyEditor_TD[4], 150);
    TextDrawFont(ToyEditor_TD[4], 1);
    TextDrawSetProportional(ToyEditor_TD[4], 1);

    ToyEditor_TD[5] = TextDrawCreate(417.000, 130.000, ">>");
    TextDrawLetterSize(ToyEditor_TD[5], 0.359, 1.399);
    TextDrawTextSize(ToyEditor_TD[5], 15.000, 140.000);
    TextDrawAlignment(ToyEditor_TD[5], 2);
    TextDrawColor(ToyEditor_TD[5], -1);
    TextDrawUseBox(ToyEditor_TD[5], 1);
    TextDrawBoxColor(ToyEditor_TD[5], 512819199);
    TextDrawSetShadow(ToyEditor_TD[5], 1);
    TextDrawSetOutline(ToyEditor_TD[5], 0);
    TextDrawBackgroundColor(ToyEditor_TD[5], 150);
    TextDrawFont(ToyEditor_TD[5], 1);
    TextDrawSetProportional(ToyEditor_TD[5], 1);
    TextDrawSetSelectable(ToyEditor_TD[5], 1);

    ToyEditor_TD[6] = TextDrawCreate(417.000, 155.000, "<<");
    TextDrawLetterSize(ToyEditor_TD[6], 0.359, 1.399);
    TextDrawTextSize(ToyEditor_TD[6], 15.000, 140.000);
    TextDrawAlignment(ToyEditor_TD[6], 2);
    TextDrawColor(ToyEditor_TD[6], -1);
    TextDrawUseBox(ToyEditor_TD[6], 1);
    TextDrawBoxColor(ToyEditor_TD[6], 512819199);
    TextDrawSetShadow(ToyEditor_TD[6], 1);
    TextDrawSetOutline(ToyEditor_TD[6], 0);
    TextDrawBackgroundColor(ToyEditor_TD[6], 150);
    TextDrawFont(ToyEditor_TD[6], 1);
    TextDrawSetProportional(ToyEditor_TD[6], 1);
    TextDrawSetSelectable(ToyEditor_TD[6], 1);

    ToyEditor_TD[7] = TextDrawCreate(418.000, 210.000, "Rotacion");
    TextDrawLetterSize(ToyEditor_TD[7], 0.300, 1.500);
    TextDrawAlignment(ToyEditor_TD[7], 2);
    TextDrawColor(ToyEditor_TD[7], -1);
    TextDrawSetShadow(ToyEditor_TD[7], 1);
    TextDrawSetOutline(ToyEditor_TD[7], 1);
    TextDrawBackgroundColor(ToyEditor_TD[7], 150);
    TextDrawFont(ToyEditor_TD[7], 2);
    TextDrawSetProportional(ToyEditor_TD[7], 1);

    ToyEditor_TD[8] = TextDrawCreate(405.000, 228.000, "LD_BEAT:up");
    TextDrawTextSize(ToyEditor_TD[8], 25.000, 25.000);
    TextDrawAlignment(ToyEditor_TD[8], 1);
    TextDrawColor(ToyEditor_TD[8], -1);
    TextDrawSetShadow(ToyEditor_TD[8], 0);
    TextDrawSetOutline(ToyEditor_TD[8], 0);
    TextDrawBackgroundColor(ToyEditor_TD[8], 255);
    TextDrawFont(ToyEditor_TD[8], 4);
    TextDrawSetProportional(ToyEditor_TD[8], 1);
    TextDrawSetSelectable(ToyEditor_TD[8], 1);

    ToyEditor_TD[9] = TextDrawCreate(405.000, 290.000, "LD_BEAT:down");
    TextDrawTextSize(ToyEditor_TD[9], 25.000, 25.000);
    TextDrawAlignment(ToyEditor_TD[9], 1);
    TextDrawColor(ToyEditor_TD[9], -1);
    TextDrawSetShadow(ToyEditor_TD[9], 0);
    TextDrawSetOutline(ToyEditor_TD[9], 0);
    TextDrawBackgroundColor(ToyEditor_TD[9], 255);
    TextDrawFont(ToyEditor_TD[9], 4);
    TextDrawSetProportional(ToyEditor_TD[9], 1);
    TextDrawSetSelectable(ToyEditor_TD[9], 1);

    ToyEditor_TD[10] = TextDrawCreate(371.000, 259.000, "LD_BEAT:left");
    TextDrawTextSize(ToyEditor_TD[10], 25.000, 25.000);
    TextDrawAlignment(ToyEditor_TD[10], 1);
    TextDrawColor(ToyEditor_TD[10], -1);
    TextDrawSetShadow(ToyEditor_TD[10], 0);
    TextDrawSetOutline(ToyEditor_TD[10], 0);
    TextDrawBackgroundColor(ToyEditor_TD[10], 255);
    TextDrawFont(ToyEditor_TD[10], 4);
    TextDrawSetProportional(ToyEditor_TD[10], 1);
    TextDrawSetSelectable(ToyEditor_TD[10], 1);

    ToyEditor_TD[11] = TextDrawCreate(440.000, 259.000, "LD_BEAT:right");
    TextDrawTextSize(ToyEditor_TD[11], 25.000, 25.000);
    TextDrawAlignment(ToyEditor_TD[11], 1);
    TextDrawColor(ToyEditor_TD[11], -1);
    TextDrawSetShadow(ToyEditor_TD[11], 0);
    TextDrawSetOutline(ToyEditor_TD[11], 0);
    TextDrawBackgroundColor(ToyEditor_TD[11], 255);
    TextDrawFont(ToyEditor_TD[11], 4);
    TextDrawSetProportional(ToyEditor_TD[11], 1);
    TextDrawSetSelectable(ToyEditor_TD[11], 1);

    ToyEditor_TD[12] = TextDrawCreate(140.000, 300.000, "Informacion");
    TextDrawLetterSize(ToyEditor_TD[12], 0.300, 1.500);
    TextDrawAlignment(ToyEditor_TD[12], 1);
    TextDrawColor(ToyEditor_TD[12], -1);
    TextDrawSetShadow(ToyEditor_TD[12], 1);
    TextDrawSetOutline(ToyEditor_TD[12], 1);
    TextDrawBackgroundColor(ToyEditor_TD[12], 150);
    TextDrawFont(ToyEditor_TD[12], 2);
    TextDrawSetProportional(ToyEditor_TD[12], 1);
}

hook OnPlayerConnect(playerid)
{
    CreatePlayerToyEditor(playerid);
    return Y_HOOKS_CONTINUE_RETURN_1;
}

hook OnScriptInit()
{
    CreateToyTextdraws();
}