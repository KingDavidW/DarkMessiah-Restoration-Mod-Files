


// ----- EXPORTED MODEL ----------------------------------------------------------------------------------------------------------------------


$modelname NPC\Leanna\npc_Leanna_cinematic_ext.mdl

$include "../shared/humans_bones_woman.qci"
$include "../shared/humans_ikchains.qci"



// Posing

$sequence reference 			"Leanna_reference" 

//--------------- IKS -----------------------------------------------------------------------------------------------------------------------------

$cmdlist lockfeet {
	ikrule lfoot footstep 
	ikrule rfoot footstep 
}

// -------- Generic ----------------------------------------------------------------------------------------------------------------------------

$sequence meditation 		"../leanna/Leanna_meditation"		fps 24		Loop   cmdlist lockfeet

$sequence surprised		"Leanna_surprised"		fps 24	 activity ACT_SURPRISED 1  {
	LX LY 	movdivframe 8 
	ikrule lfoot footstep range 0 0 0 1
	ikrule lfoot footstep range 17 20 85 85
	ikrule rfoot footstep range 0 0 0 1
	ikrule rfoot footstep range 4 9 20 24
	ikrule rfoot footstep range 27 30 63 66
	ikrule rfoot footstep range 69 72 85 85
	}

// ----- L02 ---------------------------------------------------------------------------------------------------------------------------------------

$sequence L02_sit_read_in		"..\villager_female\woman_sit_read_in"		fps 24		activity ACT_SIT_READ_IN 1	{ { event 1003 31 1 }
	align reference LX 	0 0  LX movdivframe 3
	ikrule lfoot footstep range 0 0 22 25
	ikrule rfoot footstep
	}
	
$sequence L02_sit_read_idle		"..\villager_female\woman_sit_read_idle"	fps 24		activity ACT_SIT_READ_IDLE 1	{
	align reference LX 	0 0
	Loop
	}
	
$sequence L02_sit_read_out		"..\villager_female\woman_sit_read_out"		fps 24		activity ACT_SIT_READ_OUT 1 	{ { event 1003 16 1 }
	align reference LX 	0 0	LX movdivframe 3
	node "n_idle"
	ikrule lfoot footstep range 6 11 44 44
	ikrule rfoot footstep
	}

//Menelag's death

$sequence l02_menelag_death_start		"../leanna/leanna_l02_menelag_death" 			frame 0 10		fps 24		align reference	LX LY LZR 0 0 LX LY LZR 					snap	

$sequence l02_menelag_death_idle		"../leanna/leanna_l02_menelag_death"  			frame 10 210 	loop	fps 24 		align l02_menelag_death_start LX LY LZR   10 0	

$sequence l02_menelag_death_action		"../leanna/leanna_l02_menelag_death"  			frame 210 712		fps 24  	align l02_menelag_death_idle LX LY LZR  0 0 LX LY LZR  movdivframe 200	

$sequence l02_menelag_death_talk_leanna		"../leanna/leanna_l02_menelag_death"  			frame 712 929 	loop	fps 24 		align l02_menelag_death_action LX LY LZR  502 0	

$sequence l02_menelag_death_talk_player		"../leanna/leanna_l02_menelag_death_speakplayer" 	 		loop	fps 24  	align l02_menelag_death_action LX LY LZR  502 0	

$sequence l02_menelag_death_dying		"../leanna/leanna_l02_menelag_death"  			frame 929 1000		fps 24		align l02_menelag_death_action LX LY LZR  502 0 LX LY LZR movdivframe 50	

$sequence l02_menelag_death_end			"../leanna/leanna_l02_menelag_death" 			frame 1000 1249 loop	fps 24		align l02_menelag_death_dying LX LY LZR   71 0	

$sequence l02_menelag_death_order_player	"../leanna/leanna_l02_menelag_death_order_player_2" 	fps 24		align l02_menelag_death_end	 LX LY LZR   1 0	

$sequence l02_menelag_death_go			"../leanna/leanna_l02_menelag_death_go" 		fps 24		align l02_menelag_death_end	 LX LY LZR   1 0

// ----- L04 ---------------------------------------------------------------------------------------------------------------------------------------------

//----------------------------RETAKE----------------------------------------


$sequence L04_take_careof_in		"..\leanna\Leanna_L04_take_careof"		fps 24	frame 0 36	activity ACT_TAKE_CAREOF_IN 1 	{
align reference LX LY 	0 0	LX movdivframe 3
	ikrule lfoot footstep range 0 0 0 1
	ikrule rfoot footstep range 0 0 18 23
	}
	
$sequence L04_take_careof_idle		"..\leanna\Leanna_L04_take_careof"	loop	fps 24	frame 36 106	activity ACT_TAKE_CAREOF_IDLE 1 	{
//align reference LX 	0 0	LX movdivframe 3
	}
	
$sequence L04_take_careof_out		"..\leanna\Leanna_L04_take_careof"		fps 24	frame 106 149	activity ACT_TAKE_CAREOF_OUT 1 	{
//origine
//align L04_take_careof_idle LX LY  92 0	LX movdivframe 3 

//modif pour enlever saute transition
//align reference LX LY  0 0	LX movdivframe 3

		node "n_idle"
	ikrule lfoot footstep range 23 24 43 43
	ikrule rfoot footstep range 11 12 43 43
	}



$sequence L04_take_careof_retake_in		"..\leanna\Leanna_L04_take_careof_retake"		fps 24	frame 0 36	activity ACT_TAKE_CAREOF_IN 1 	{
align reference LX LY 	0 0	LX movdivframe 3
	ikrule lfoot footstep range 0 0 0 1
	ikrule rfoot footstep range 0 0 18 23
	}
	
$sequence L04_take_careof_retake_idle		"..\leanna\Leanna_L04_take_careof_retake"	loop	fps 24	frame 36 106	activity ACT_TAKE_CAREOF_IDLE 1 	{
//align reference LX 	0 0	LX movdivframe 3
	}
	
$sequence L04_take_careof_retake_out		"..\leanna\Leanna_L04_take_careof_retake"		fps 24	frame 106 149	activity ACT_TAKE_CAREOF_OUT 1 	{
//origine
//align L04_take_careof_idle LX LY  92 0	LX movdivframe 3 

//modif pour enlever saute transition
//align reference LX LY  0 0	LX movdivframe 3

		node "n_idle"
	ikrule lfoot footstep range 23 24 43 43
	ikrule rfoot footstep range 11 12 43 43
	}

//---------------------------------------------------------------------------


$sequence L04_anchor_room_in		"..\leanna\leanna_L04_anchor_room"		fps 24  frame 0 145 	activity ACT_ANCHOR_ROOM_IN 1  {
	align reference	LX LY LZR 0 0 LX LY LZR	movdivframe 20
	/*ikrule lfoot footstep range 0 0 0 1
	ikrule lfoot footstep range 8 12 42 45
	ikrule lfoot footstep range 52 57 71 77
	ikrule lfoot footstep range 86 90 98 100
	ikrule lfoot footstep range 136 139 145 145
	ikrule rfoot footstep range 0 0 12 16
	ikrule rfoot footstep range 22 26 50 54
	ikrule rfoot footstep range 71 75 88 95
	ikrule rfoot footstep range 111 114 132 145*/
	}
$sequence L04_anchor_room_idle		"..\leanna\leanna_L04_anchor_room"	loop	fps 24  frame 145 192 	activity ACT_ANCHOR_ROOM_OPEN 1 {
	align L04_anchor_room_in LX LY LZR 145 0  
	cmdlist lockfeet
	}

$sequence L04_anchor_room_close		"..\leanna\leanna_L04_anchor_room"		fps 24	frame 192 290	activity ACT_ANCHOR_ROOM_CLOSE 1 {
	align L04_anchor_room_idle LX LY LZR 0 0  LX LY LZR movdivframe 20
	/*ikrule lfoot footstep range 0 0 6 20
	ikrule lfoot footstep range 31 35 51 56
	ikrule lfoot footstep range 70 76 98 98
	ikrule rfoot footstep range 0 0 0 1
	ikrule rfoot footstep range 12 16 34 37
	ikrule rfoot footstep range 47 50 98 98*/
	}
$sequence L04_anchor_room_out		"..\leanna\leanna_L04_anchor_room"	loop	fps 24	frame 290 350	activity ACT_ANCHOR_ROOM_IDLE 1  {
	align L04_anchor_room_close LX LY LZR 0 0  
	cmdlist lockfeet
	}


// ----- L05 ---------------------------------------------------------------------------------------------------------------------------------------------


$sequence L05_incantation_grid_in	"../leanna/Leanna_L05_incantation_grid"	frames 0 187     fps 24     activity ACT_INCANTATION_GRID_IN 1	{
	LX LY movdivframe 3
	node "n_incantate"
	{ event 1003 60 2 }	//	start grid's opening
	ikrule lfoot footstep range 0 0 11 14
	ikrule lfoot footstep range 16 17 187 187
	ikrule rfoot footstep range 0 0 4 7
	ikrule rfoot footstep range 8 11 51 55
	ikrule rfoot footstep range 60 64 187 187
	}
$sequence L05_incantation_grid_idle	"../leanna/Leanna_L05_incantation_grid"	frames 187 260   fps 24     activity ACT_INCANTATION_GRID_IDLE 1 loop {
	align L05_incantation_grid_in  LX 	187 0    
	node "n_incantate"
	cmdlist lockfeet
	}
$sequence L05_incantation_grid_out	"../leanna/Leanna_L05_incantation_grid"	frames 260 434   fps 24     activity ACT_INCANTATION_GRID_OUT 1 {
	align L05_incantation_grid_in	LX	0 0   
	LX LY movdivframe 6
	node "n_incantate"
	{ event 1003 105 1 }	//	custom : close grid
	ikrule lfoot footstep range 0 0 47 60
	ikrule lfoot footstep range 70 75 90 92
	ikrule lfoot footstep range 94 95 112 115
	ikrule lfoot footstep range 122 126 146 149
	ikrule lfoot footstep range 157 162 174 174
	ikrule rfoot footstep range 0 0 78 81
	ikrule rfoot footstep range 83 85 101 104
	ikrule rfoot footstep range 107 110 136 139
	ikrule rfoot footstep range 144 147 174 174
        }

$sequence L05_meditation_in	"../leanna/Leanna_L05_meditation"	frames 0 60     fps 24     activity ACT_L05_MEDITATION_IN 1	{
	LX LY movdivframe 3
	cmdlist lockfeet
	}
$sequence L05_meditation_idle	"../leanna/Leanna_L05_meditation"  loop  frames 60 130   fps 24     activity ACT_L05_MEDITATION_IDLE 1  {
	align L05_meditation_in  LX 	60 0    
	cmdlist lockfeet
	}
$sequence L05_meditation_out	"../leanna/Leanna_L05_meditation"	frames 130 200   fps 24     activity ACT_L05_MEDITATION_OUT 1 {
	align L05_meditation_in	LX	0 0   
	LX LY movdivframe 6
	node "n_idle"
	ikrule lfoot footstep range 0 0 26 28
	ikrule lfoot footstep range 30 31 52 54
	ikrule lfoot footstep range 55 57 70 70
	ikrule rfoot footstep range 0 0 13 16
	ikrule rfoot footstep range 17 18 41 44
	ikrule rfoot footstep range 45 47 70 70
        }



$sequence L05_standby_in	"../leanna/Leanna_L05_standby"		frames 0 16     fps 24     activity ACT_L05_STANDBY_IN 1 {
	ikrule lfoot footstep
	ikrule rfoot footstep range 0 0 0 1
	ikrule rfoot footstep range 8 12 16 16
	}
	
$sequence L05_standby_idle	"../leanna/Leanna_L05_standby"  loop  frames 16 236   fps 24     activity ACT_L05_STANDBY_IDLE 1  cmdlist lockfeet
	

$sequence L05_standby_out	"../leanna/Leanna_L05_standby"		frames 236 255   fps 24     activity ACT_L05_STANDBY_OUT 1 {
	node "n_idle"
	ikrule lfoot footstep
	ikrule rfoot footstep range 0 0 5 8
	ikrule rfoot footstep range 11 14 19 19
        }

$sequence l05_through_wall		"../leanna/leanna_l05_through_wall"		fps 24		activity ACT_L05_THROUGH_WALL 1  {
	LX LY movdivframe 4 
	node "n_walk"
	ikrule lfoot footstep range 0 0 4 6
	ikrule lfoot footstep range 8 10 18 23
	ikrule lfoot footstep range 26 40 65 149
	ikrule lfoot footstep range 152 154 160 160
	ikrule rfoot footstep range 0 0 10 14
	ikrule rfoot footstep range 18 20 27 33
	ikrule rfoot footstep range 35 38 154 156
	}
	
//-------------------------------------------- RETAKE -------------------------

$sequence barge_idle_1		"../leanna/Leanna_L05_Boat"	frames 0 750	fps 24	align reference LX LY 0 0 	{ event 2192 1 }	
//$sequence barge_idle_1		"../leanna/Leanna_L05_Boat"	frames 700 800	fps 24	align reference LX LY 0 0	loop  

$sequence barge_out_1 		"../leanna/Leanna_L05_Boat"	frames 800 1110	fps 24	 activity ACT_BARGE_OUT 1	{
	align reference LX LY  0 0  movdivframe 100 LX LY LZ
	{ event 2192 1 }
	ikrule lfoot footstep range 300 310 310 310
	ikrule rfoot footstep range 300 310 310 310
	}


$sequence barge_idle_1_retake		"../leanna/Leanna_L05_a_boat_retake_wip21_final"	frames 0 750	fps 24	align reference LX LY LZ   0 0  	 { event 2192 1 }	
//align reference LX LY LZ 0 0
//$sequence barge_idle_1		"../leanna/Leanna_L05_Boat"	frames 700 800	fps 24	align reference LX LY 0 0	loop  

$sequence barge_out_1_retake 		"../leanna/Leanna_L05_a_boat_retake_wip21_final"	frames 800 1111	fps 24	  activity ACT_BARGE_OUT 1	 {
align reference LX LY LZ  0 0	movdivframe 100 LX LY LZ
//align barge_idle_1 LXR LYR LZR 750 0 movdivframe 100 LX LY LZ 
	{ event 2192 1 }
	ikrule lfoot footstep range 290 295 311 311 contact 295
	ikrule rfoot footstep range 290 295 311 311 contact 295
	}
	
//------------------------------------------------------------------------------
$sequence L05_beach_speaking_injuredguard_in	"../leanna/Leanna_L05_beach_speaking_injuredguard"	frames 0 40	fps 24 {
	ikrule lfoot footstep range 0 0 7 10
	ikrule lfoot footstep range 12 14 40 40
	ikrule rfoot footstep range 0 0 0 1
	ikrule rfoot footstep range 15 18 40 40
	}
$sequence L05_beach_speaking_injuredguard_idle	"../leanna/Leanna_L05_beach_speaking_injuredguard_idle"	fps 12	 cmdlist lockfeet

$sequence L05_beach_speaking_injuredguard_out	"../leanna/Leanna_L05_beach_speaking_injuredguard"	frames 76 110	fps 24 {
	ikrule lfoot footstep range 0 0 16 19
	ikrule lfoot footstep range 21 24 34 34
	ikrule rfoot footstep range 0 0 8 11
	ikrule rfoot footstep range 13 16 34 34
	}

$sequence L05_spell_lift_pillar 	"../leanna/Leanna_L05_spell_liftpillar"				fps 24	node "n_idle" {
	ikrule lfoot footstep range 0 0 17 20
	ikrule lfoot footstep range 26 29 76 119
	ikrule lfoot footstep range 272 290 370 370
	ikrule rfoot footstep range 0 0 14 18
	ikrule rfoot footstep range 24 27 76 119
	ikrule rfoot footstep range 272 278 284 288
	ikrule rfoot footstep range 294 298 370 370
	}

$sequence L05_climb_rocks		"../leanna/Leanna_L05_climb_rocks"				fps 24  node "n_idle"  {
	align reference LX LY LZ 0 0 LX LY LZ movdivframe 8
	ikrule lfoot footstep range 111 113 131 135
	ikrule lfoot footstep range 138 141 141 141
	ikrule rfoot footstep range 129 132 141 141
	}

$sequence L05_check_grid	"../leanna/Leanna_L05_check_grid"	fps 24     activity L05_CHECK_GRID 1  {
	LX LY LZR movdivframe 8
	ikrule lfoot footstep range 0 0 10 20
	ikrule lfoot footstep range 33 40 46 51
	ikrule lfoot footstep range 59 63 206 209
	ikrule lfoot footstep range 218 222 222 222
	ikrule rfoot footstep range 0 0 4 11
	ikrule rfoot footstep range 19 24 28 36
	ikrule rfoot footstep range 47 52 170 173
	ikrule rfoot footstep range 176 180 198 203
	ikrule rfoot footstep range 206 208 218 220
	ikrule rfoot footstep range 226 230 240 240
	}

$sequence L05_check_hole	"../leanna/Leanna_L05_check_hole"	fps 24     activity L05_CHECK_HOLE 1 {
	LX LY movdivframe 8
	ikrule lfoot footstep range 0 0 1 4
	ikrule lfoot footstep range 6 9 30 33
	ikrule lfoot footstep range 40 44 104 107
	ikrule lfoot footstep range 110 113 132 136
	ikrule lfoot footstep range 138 141 150 150
	ikrule rfoot footstep range 0 0 10 13
	ikrule rfoot footstep range 18 21 121 124
	ikrule rfoot footstep range 128 132 150 150
	}

$sequence L05_executed		"../leanna/Leanna_L05_executed"		fps 24     activity L05_EXECUTED 1 {
	LX LY movdivframe 40
	ikrule lfoot footstep range 0 0 35 38
	ikrule rfoot footstep range 0 0 27 43
	}
$sequence L05_executed_out	"../leanna/Leanna_L05_executed"	 frame 534 535  	fps 24     activity L05_EXECUTED_OUT 1  {
	align L05_executed LX LY LZ 535 0
	loop
	}
//----------------------------- RETAKE-------------------------
$sequence L05_lift_pilar_1	"../leanna/Leanna_L05_lift_pilar_1"		fps 24     activity L05_LIFT_PILAR_1 1 {
	LZR movdivframe 4
// desactivation de L'IK car bug...

//	ikrule lfoot footstep range 0 0 72 105
//	ikrule lfoot footstep range 320 325 370 370
//	ikrule rfoot footstep range 0 0 14 18
//	ikrule rfoot footstep range 23 27 83 105
//	ikrule rfoot footstep range 320 325 370 370

	}
//---------------------------------------------------------------

$sequence L05_lift_pilar_2	"../leanna/Leanna_L05_lift_pilar_2"		fps 24     activity L05_LIFT_PILAR_2 1 {
	LZR movdivframe 4
	ikrule lfoot footstep range 0 0 17 20
	ikrule lfoot footstep range 25 30 75 100
	ikrule lfoot footstep range 310 315 370 370
	ikrule rfoot footstep range 0 0 14 18
	ikrule rfoot footstep range 23 27 83 105
	ikrule rfoot footstep range 310 315 370 370
	}

$sequence L05_lift_pilar_interrupt	"../leanna/Leanna_L05_lift_pilar_2"	frame 0 68	fps 24     activity L05_LIFT_PILAR_INTERRUPT 1

$sequence L05_itspaokai 	"../leanna/leanna_fpp_itspaokai" 	 fps 24		LX LY	movdivframe 20

$sequence L05_paokai_youmadeit 		"../leanna/leanna_fpp_madeit" 		 fps 24		LX LY	movdivframe 20
$sequence L05_paokai_altarentry 	"../leanna/leanna_fpp_itspaokai" 	 fps 24		LX LY	movdivframe 20
$sequence L05_paokai_dropgrid 		"../leanna/leanna_fpp_paokai_dropgrid" 	 fps 24		LX LY	movdivframe 20

//----- L10 ------------------------------------------------------------------------------------------------------------------------------------------------

$sequence L10_cocoon_idle	"../leanna/Leanna_L10_cocoon_idle" 	fps 24     activity COCOON_IDLE 1 loop
$sequence L10_cocoon_out	"../leanna/Leanna_L10_cocoon_out"	 	fps 24     activity COCOON_OUT 1	LX LY 	movdivframe 16 {
	ikrule lfoot footstep range 135 137 326 330
	ikrule lfoot footstep range 336 340 340 340
	ikrule rfoot footstep range 243 245 340 340
	}

$sequence L10_pit_idle		"../leanna/Leanna_L10_pit_throw"	 	fps 24     activity PIT_IDLE 1		frames 0 0	Loop
$sequence L10_pit_throw		"../leanna/Leanna_L10_pit_throw"	 align reference LX LY  0 0  LX LZ  	fps 24     activity PIT_THROW 1	LX LY LZ	movdivframe 16  { event 2166 380 }

$sequence L10_pit_throw_2	"../leanna/Leanna_L10_pit_throw_2"	 align reference LX LY  0 0	fps 24     activity PIT_THROW_2 1  LX LY LZ	movdivframe 16

$sequence L10_idle_tired 	"../leanna/Leanna_L10_idle_Tired"		fps 24 	   activity ACT_IDLE_TIRED 1 loop cmdlist lockfeet	

$sequence L10_walk_tired_N	"../leanna/Leanna_L10_walk_tired"	FPS 24	activity ACT_WALK_TIRED 1	loop	{
	LX movdivframe 4
	node "n_walk_tired"
	ikrule lfoot footstep range .. 0 14 17
	ikrule lfoot footstep range 33 38 55 ..
	ikrule rfoot footstep range 8 11 45 50
}

// -------- Cinematics	"Menelag dinner" -------------------------------------------------------------------------------------------------------------------

$sequence menelag_dinner	"../leanna/leanna_cutscene_dinner"		fps 24	align reference LX LY LZ 0 0	LX LY   movdivframe 2090

// -------- Cinematics	"boat_nightmare" -------------------------------------------------------------------------------------------------------------------

$sequence boat_nightmare	"../leanna/leanna_cutscene_boat"		fps 24   LX LY movdivframe 1150

// -------- Cinematics	"boat_nightmare" -------------------------------------------------------------------------------------------------------------------

$sequence sareth_vision		"../leanna/leanna_cutscene_sareth_vision"	fps 24   LX LY movdivframe 1000


//--------------------------------------- SOUNDS -------------------------------------------------------------

$include "leanna_cinematics_sounds.qci"
