


// ----- EXPORTED MODEL ----------------------------------------------------------------------------------------------------------------------


$modelname NPC\arantir\Npc_arantir_cinematic_ext.mdl

$include "../shared/humans_bones_man.qci"
$include "../shared/humans_ikchains.qci"

$sequence reference			"../arantir/arantir_reference"				



//----------- STAND ANIMATIONS ---------------------------------------------------------------------------------------------------------------


$sequence idle_0 		"../necromancer/Necromancer_idle_0"				fps 24	activity ACT_IDLE 1 	{
	loop 
	node "n_idle" 
	cmdlist lockfeet
	}
	
$sequence idle_1 		"../necromancer/Necromancer_idle_1"				fps 24	activity ACT_IDLE 1 	{
	loop 
	node "n_idle" 
	cmdlist lockfeet
	}
	
$sequence idle_2 		"../necromancer/Necromancer_idle_2"				fps 24	activity ACT_IDLE 1 	{
	loop 
	node "n_idle" 
	cmdlist lockfeet
	}


// L03-------------------------------------------------------------------------------

$sequence L03_execute_guard	"../Arantir/Arantir_L03_execute_guard"				fps 24	 activity ACT_L03_EXECUTE_GUARD 1 {
	LX LY   movdivframe 12     	
	ikrule lfoot footstep range 0 0 13 16
	ikrule lfoot footstep range 18 19 40 42
	ikrule lfoot footstep range 46 48 340 343
	ikrule lfoot footstep range 351 354 412 412
	ikrule rfoot footstep range 0 0 5 8
	ikrule rfoot footstep range 10 12 101 104
	ikrule rfoot footstep range 109 112 369 372
	ikrule rfoot footstep range 374 376 412 412
	}
		
$sequence L03_check_jail	"../Necromancer/Necromancer_L10_check_jail"			fps 24	LX  activity ACT_L03_CHECK_JAIL 1 {
	ikrule lfoot footstep
	ikrule rfoot footstep range 0 0 0 1
	ikrule rfoot footstep range 6 9 58 60
	ikrule rfoot footstep range 65 67 133 136
	ikrule rfoot footstep range 143 145 145 145
}
$sequence L03_meditation_idle 	"../Necromancer/Necromancer_L10_meditation_idle"		fps 24	loop	cmdlist lockfeet		activity ACT_L03_MEDITATION_IDLE 1 

$sequence L03_search_bookcase  	"../Necromancer/necromancer_L10_search_bookcase"		 activity ACT_L03_SEARCH_BOOKCASE 1	{
	LY movdivframe 6
	cmdlist lockfeet
	fps 24
	}
	
$sequence L03_give_orders		"../Necromancer/Necromancer_L10_check_jail"		 activity ACT_L03_GIVE_ORDERS 1	{
	fps 24
	LX LY movdivframe 6
	}
//------------------------------------   RETAKE --------------------------------------

/*
$sequence L03_read_bookcase_in		"../Necromancer/Necromancer_L10_read_bookcase"		frames 0 30	 activity ACT_L03_READ_BOOKCASE_IN 1	{
	LX LY
	cmdlist lockfeet
	fps 24
	}
	
$sequence L03_read_bookcase_idle	"../Necromancer/Necromancer_L10_read_bookcase"		frames 30 210	 activity ACT_L03_READ_BOOKCASE_IDLE 1	{
	Loop
	align reference LX LY  	0 0
	cmdlist lockfeet
	fps 24
	}
	
$sequence L03_read_bookcase_out		"../Necromancer/Necromancer_L10_read_bookcase"		frames 210 250	 activity ACT_L03_READ_BOOKCASE_OUT 1	{
	align reference LX LY  	0 0	LX LY
	cmdlist lockfeet
	fps 24
	}
	
*/

$sequence L03_read_bookcase_idle		"../Necromancer/Necromancer_L10_read_bookcase"		frames 0 250	 activity ACT_L03_READ_BOOKCASE_OUT 1	{
	align reference LX LY  	0 0	LX LY
	cmdlist lockfeet
	fps 24	
}	
//------------------------------------ 	
		
$sequence L03_grab_player_in		"../Arantir/Arantir_L03_grab_player"		frames 0 60	 activity ACT_L03_GRAB_PLAYER_IN 1	{
	LX LY movdivframe 8
	fps 24
	ikrule lfoot footstep range 0 0 3 60
	ikrule rfoot footstep range 0 0 0 1
	ikrule rfoot footstep range 3 4 60 60
	}
	
$sequence L03_grab_player_idle		"../Arantir/Arantir_L03_grab_player"		frames 60 260	 activity ACT_L03_GRAB_PLAYER_IDLE 1	{
	align reference LX LY  	0 0	
	fps 24
	cmdlist lockfeet
	}
	
$sequence L03_grab_player_out		"../Arantir/Arantir_L03_grab_player"		frames 260 290	 activity ACT_L03_GRAB_PLAYER_OUT 1	{
	align reference LX LY  	0 0	LX LY	movdivframe 4
	fps 24
	ikrule lfoot footstep 
	ikrule rfoot footstep range 0 0 10 13
	ikrule rfoot footstep range 16 20 30 30
	}
	
// L05-------------------------------------------------------------------------------

$sequence L05_execute_leanna	"../Arantir/Arantir_L05_execute_leanna"				fps 24		LX LY LZ   movdivframe 12     	activity ACT_L05_EXECUTE_LEANNA 1 

// L12-------------------------------------------------------------------------------

$sequence L12_skull_ritual_in		"../Arantir/arantir_l12_skull_ritual"		fps 24	frame 0 40	activity ACT_L12_SKULL_RITUAL_IN 1

$sequence L12_skull_ritual_idle		"../Arantir/arantir_l12_skull_ritual"		fps 24	frame 40 560	activity ACT_L12_SKULL_RITUAL_IDLE 1  loop

$sequence L12_skull_ritual_out		"../Arantir/arantir_l12_skull_ritual"		fps 24	frame 560 600	activity ACT_L12_SKULL_RITUAL_OUT 1

$sequence l12_invocation_part_1		"../arantir/arantir_l12_invocation_part1"	fps 24 			activity ACT_L12_SUMMON_PART_1 1  {
	walkframe 1 LY
	walkframe 104 LY
	walkframe 142 LX LY
	walkframe 170 LX LY
	walkframe 189 LX LY
	walkframe 220 LX LY
	walkframe 246 LX LY
	walkframe 367 LX LY
	walkframe 398 LX LY LZ LZR
	walkframe 419 LX LY LZ LZR
	walkframe 449 LX LY LZ LZR
	walkframe 475 LX LY LZ LZR
	walkframe 513 LZ
}

$sequence l12_levitation_idle		"../arantir/arantir_l12_invocation_part2"	fps 24 	frame 0 110	activity ACT_L12_LEVITATION_IDLE 1  		align l12_invocation_part_1 LX LY LZ LZR  513 0   LX LY LZ movdivframe 10 loop

$sequence l12_levitation_to_stunned	"../arantir/arantir_l12_invocation_part2"	fps 24 	frame 110 217	activity ACT_L12_LEVITATION_TO_STUNNED 1 	align l12_levitation_idle LX LY LZ LZR  110 0   LX LY LZ movdivframe 10

$sequence l12_stunned_idle		"../arantir/arantir_l12_invocation_part2"	fps 24 	frame 217 271	activity ACT_L12_STUNNED_IDLE 1 loop {
	 align l12_levitation_to_stunned LX LY LZ LZR  107 0
	 cmdlist lockfeet
	}

$sequence l12_stunned_to_levitation	"../arantir/arantir_l12_invocation_part2"	fps 24 	frame 271 359	activity ACT_L12_STUNNED_TO_LEVITATION 1  {
	align l12_stunned_idle LX LY LZ LZR  154 0  	
	LX LY LZ movdivframe 10
	ikrule lfoot footstep range 0 0 30 33
	ikrule rfoot footstep range 0 0 30 33
	}

$sequence l12_hit_back		"../arantir/arantir_l12_hit_back"  	fps 24 		activity ACT_L12_HIT_BACK 1 {
	LX	node "n_hit"  align l12_stunned_idle LX LY LZ LZR  50 0  	
	LX LY LZ movdivframe 12
	ikrule lfoot footstep range 10 12 30 33
	ikrule rfoot footstep range 10 12 30 33
	}
$sequence l12_hit_left		"../arantir/arantir_l12_hit_left"  	fps 24 		activity ACT_L12_HIT_LEFT 1 {
	LX	node "n_hit"  align l12_stunned_idle LX LY LZ LZR  50 0  	
	LX LY LZ movdivframe 12
	ikrule lfoot footstep range 12 13 30 33
	ikrule rfoot footstep range 10 11 30 33
	}
$sequence l12_hit_right		"../arantir/arantir_l12_hit_right"  	fps 24 		activity ACT_L12_HIT_RIGHT 1 {
	LX	node "n_hit"  align l12_stunned_idle LX LY LZ LZR  50 0  	
	LX LY LZ movdivframe 12
	ikrule lfoot footstep range 12 13 30 33
	ikrule rfoot footstep range 12 13 30 33
	}
$sequence l12_hit_front		"../arantir/arantir_l12_hit_front"  	fps 24 		activity ACT_L12_HIT_FRONT 1 {
	LX	node "n_hit"  align l12_stunned_idle LX LY LZ LZR  50 0  	
	LX LY LZ movdivframe 12
	ikrule lfoot footstep range 12 13 30 33
	ikrule rfoot footstep range 12 13 30 33
	}

$sequence l12_final_death		"../arantir/arantir_l12_final_death"		fps 24 			activity ACT_L12_FINAL_DEATH 1  LX LY movdivframe 10

//-------------- L12 CUSTOM STANDUP----------------------------------------------------------------------------------------------------------

$sequence L12_standup_front 		"../arantir/arantir_standup_front"	LX	movdivframe 3		fps 24	activity ACT_STANDUP_FRONT_CUSTOM 1 
	
$sequence L12_standup_back 		"../arantir/arantir_standup_back"	LX	movdivframe 3		fps 24	activity ACT_STANDUP_BACK_CUSTOM 1 

$sequence spell_invisibility 		"../Lich/Lich_Spell_invisibility" 	fps 24		activity ACT_SPELL_INVISIBILITY 1	{
	movdivframe 6
	node "n_combatidle"	
	{ event 2164 2 } { event 2165 22 }
	}

// -------- Cinematics	"boat_nightmare" -------------------------------------------------------------------------------------------------------------------

$sequence boat_nightmare	"../arantir/arantir_cutscene_boat"			fps 24        LX LY movdivframe 1200


// -------- Cinematics	"hero_death" -------------------------------------------------------------------------------------------------------------------


$sequence hero_death		"../arantir/arantir_cutscene_hero_death"		fps 24        LX LY movdivframe 1244




// *************  SOUNDS -----------------------------------------------------------------------------------------------------------------------

$include "arantir_cinematics_sounds.qci"
