


// ----- EXPORTED MODEL ----------------------------------------------------------------------------------------------------------------------


$modelname NPC\phenrig\Npc_phenrig_cinematic_ext.mdl

$include "../shared/humans_bones_man.qci"
$include "../shared/humans_ikchains.qci"

$sequence reference			"../phenrig/phenrig_reference"				

//----------- STAND ANIMATIONS ---------------------------------------------------------------------------------------------------------------


$sequence idle_0 		"../wizard/wizard_idle_0"				fps 24	activity ACT_IDLE 1 	{
	loop 
	node "idle" 
	cmdlist lockfeet
	}
	
$sequence idle_1 		"../wizard/wizard_idle_1"				fps 24	activity ACT_IDLE 1 	{
	loop 
	node "idle" 
	cmdlist lockfeet
	}
	
$sequence idle_2 		"../wizard/wizard_idle_2"				fps 24	activity ACT_IDLE 1 	{
	loop 
	node "idle" 
	cmdlist lockfeet
	}

$sequence idle_3 		"../wizard/wizard_idle_3"				fps 24	activity ACT_IDLE 1 	{
	loop 
	node "idle" 
	cmdlist lockfeet
	}



$sequence phenrig_briefing	"../phenrig/cutscene_phenrig_briefing"		fps 24		LX LY   movdivframe 2700	//{ event 2196 2970 } { event 2197 2974 }
$sequence phenrig_nightmare	"../phenrig/cutscene_phenrig_nightmare"		fps 24		LX LY   movdivframe 3450	//{ event 2196 2970 }


// Cinematics	"Phenrig nightmare"

//$sequence phenrig_flashback	"../phenrig/cutscene_phenrig_flashback"		fps 24		LX LY   movdivframe 3350	{ event 2196 2970 } { event 2197 2974 }

// Cinematics	"sareth_vision"

$sequence sareth_vision		"../phenrig/Phenrig_cutscene_sareth_vision"	fps 24		LX LY   movdivframe 2000


$sequence L00_briefing		"../phenrig/L00_briefing"	fps 24		LX LY movdivframe 20	


// *************  SOUNDS -----------------------------------------------------------------------------------------------------------------------

$include "phenrig_animations_cinematics_sounds.qci"






