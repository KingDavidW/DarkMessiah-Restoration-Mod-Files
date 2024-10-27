"GameMenu"
{
	"1"
	{
		"label" "#GameUI_GameMenu_ResumeGame"
		"command" "ResumeGame"
		"OnlyInGame" "1"
	}
	"5"
	{
		"label" "#GameUI_GameMenu_NewGame"
		"command" "OpenNewGameDialog"
		"notmulti" "1"
	}
	"6"
	{
		"label" "#GameUI_GameMenu_LoadGame"
		"command" "OpenLoadGameDialog"
		"notmulti" "1"
	}
	"3"
	{
		"label" "#GameUI_GameMenu_BonusMaps"
		"command" "OpenBonusMapsDialog"
		"InGameOrder" "50"
		"notmulti" "1"
	}
	"7"
	{
		"label" "#GameUI_GameMenu_SaveGame"
		"command" "OpenSaveGameDialog"
		"notmulti" "1"
		"OnlyInGame" "1"
		"cansave" "1"
	}
	"11"
	{
		"label" "#GameUI_GameMenu_Multiplayer"
		"command" "LaunchMultiplayerExe"
		"notmulti" "1"
		"steamavailable" "1"
	}
	"12"
	{
		"label" "#GameUI_GameMenu_Credits"
		"command" "LaunchCredits"
		"notmulti" "1"
		"OnlyNotInGame" "1"
	}
	
	"13"
	{
		"label" "#GameUI_GameMenu_Options"
		"command" "OpenOptionsDialog"
	}
	"14"
	{
		"label" "#GameUI_GameMenu_ReturnToMainMenu"
		"command" "BackToMainMenu"
		"OnlyInGame" "1"
	}
	"15"
	{
		"label" "#GameUI_GameMenu_Quit"
		"command" "Quit"
	}
}

