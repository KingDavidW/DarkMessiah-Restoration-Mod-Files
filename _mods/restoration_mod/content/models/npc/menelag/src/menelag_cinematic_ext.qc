


// ----- EXPORTED MODEL ----------------------------------------------------------------------------------------------------------------------


$modelname NPC\menelag\Npc_menelag_cinematic_ext.mdl

$include "../shared/humans_bones_man.qci"
$include "../shared/humans_ikchains.qci"
$include "../shared/humans_gestures.qci"
$include "../shared/humans_postures.qci"

$sequence reference			"../menelag/menelag_reference"				


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

// L02

$sequence l02_menelag_death_start		"../menelag/menelag_l02_menelag_death"  		frame 0 10		align reference LX LY LZR 0 0	LX LY LZR		fps 24	

$sequence l02_menelag_death_idle		"../menelag/menelag_l02_menelag_death"  		frame 10 110 	loop   	align l02_menelag_death_start LX LY LZR 10 0		fps 24	

$sequence l02_menelag_death_action		"../menelag/menelag_l02_menelag_death"  		frame 110 613	  	align l02_menelag_death_idle LX LY LZR 100 0 LX LY LZR movdivframe 200	fps 24	

$sequence l02_menelag_death_talk_leanna		"../menelag/menelag_l02_menelag_death" 			frame 604 830 	loop 	align l02_menelag_death_action LX LY LZR 503 0		fps 24	


$sequence l02_menelag_death_talk_player		"../menelag/menelag_l02_menelag_death_speakplayer" 	 		loop 	align l02_menelag_death_action LX LY LZR 503 0	

$sequence l02_menelag_death_dying		"../menelag/menelag_l02_menelag_death"  		frame 830 901		align l02_menelag_death_action LX LY LZR 503 0		fps 24	

$sequence l02_menelag_death_end			"../menelag/menelag_l02_menelag_death"  		frame 901 1140 	loop	align l02_menelag_death_dying LX LY LZR 71 0		fps 24	

$sequence l02_menelag_death_order_player	"../menelag/menelag_l02_menelag_death_order_player_2"  	align l02_menelag_death_end LX LY LZR 1 0		fps 24	


$sequence l02_menelag_death_go			"../menelag/menelag_l02_menelag_death_go" 		fps 24		align l02_menelag_death_end	 LX LY LZR   1 0


$makeposture posture_l02_md_talk_player 	"../menelag/menelag_l02_menelag_death_speakplayer" 8 45 130 24 150  					


//------------ Cinematic "sareth_vision "-------------------------------------------------------------------------------------------------------

$sequence sareth_vision		"../menelag/menelag_cutscene_sareth_vision"		fps 24   LX LY   movdivframe 2000


//------------ Cinematic "Menelag dinner"-------------------------------------------------------------------------------------------------------

$sequence menelag_dinner	"../menelag/menelag_cutscene_dinner"		fps 24 align reference LX LY LZ 0 0		LX LY   movdivframe 2090

// *************  SOUNDS -----------------------------------------------------------------------------------------------------------------------

//$include "menelag_animations_cinematics_sounds.qci" //missing//






