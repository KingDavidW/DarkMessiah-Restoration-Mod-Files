
// ---------------------------------------------------------------------------------------------------------------------------------------

//		BIPED QC

// ---------------------------------------------------------------------------------------------------------------------------------------




//----- REFERENCE -------------------------------------------------------------------------------------------------------------------------------------

$include "../Leanna/Leanna_eyes.qci"
//$include "..\leanna_lich\leanna_lich_eyes.qci"
//$include "../Villager_female/Villager_female_eyes.qci"
//$include "../servant_specter/Servant_specter_eyes.qci"


// ----- EXPORTED MODEL --------------------------------------------------------------------------------------------------------------------------

$modelname NPC\Leanna\Npc_Leanna_cinematic.mdl
//$modelname NPC\Leanna_lich\npc_Leanna_lich.mdl
//$modelname NPC\villager_Female\Npc_villager_female.mdl
//$modelname NPC\servant_specter\Npc_servant_specter.mdl

// ------ BONES --------------------------------------------------------------------------------------------------------------------------------------------

$include "../shared/humans_bones_woman.qci"

$poseparameter "move_yaw" -180 180 wrap


//-----------------------------------------------------------------------------------------------------------------------------------------


// Attachments points:


$attachment "Center" 		"SK_Root" 		0 0 0 rotate -90 -90 0
$attachment "Chest" 		"SK_Spine_3" 		0 0 0 rotate -90 -90 0

$attachment "LeftHand" 		"SK_L_Hand" 		4.50 -1.00 0.00 rotate -90 0 0
$attachment "RightHand" 	"SK_R_Hand" 		4.50 1.50 0.00 rotate -90 0 0

$attachment "CutHead" 		"SK_Head" 		0.00 0.00 0.00	rotate -90 180 0
$attachment "book" 		"SK_L_Hand" 		4.50 -1.00 0.00 rotate 0 0 90

$attachment "basket" 		"SK_L_Hand" 		5 -14.50 2 rotate -20 -105 20

$attachment "Neck" 		"SK_Neck" 		0.00 1.00 0.00 		rotate -78 -90 0
$attachment "Backstab" 		"SK_Spine_4" 		0.00 0.00 -3.00 	rotate -80 90 180

// ------------- HITBOX GROUP ----------------------------------------------------------------------------------------------------------------------

$hgroup 1 "SK_Neck"

$hgroup 2 "SK_Spine_2"

$hgroup 3 "SK_Spine_3"

$hgroup 4 "SK_L_Shoulder"

$hgroup 5 "SK_R_Shoulder"

$hgroup 6 "SK_L_Leg"

$hgroup 7 "SK_R_Leg"



// ------------- INCLUDED QCI ----------------------------------------------------------------------------------------------------------------------

$include "..\shared\humans_weightlists.qci"

$include "..\shared\humans_ikchains.qci"
$include "..\shared\humans_gestures.qci"
$include "..\shared\humans_postures.qci"

$include "leanna_ragdoll.qci"
$include "Leanna_body_poses.qci"
$include "..\Villager_male/Villager_Male_Hitbox.qci"


$include "../leanna/leanna_lod.qci"
//$include "../villager_female/villager_female_lod.qci"


$includemodel "NPC\Leanna\npc_Leanna_animations_generic.mdl"
$includemodel "NPC\shared\animations\npc_woman_animations.mdl"
$includemodel "NPC\shared\gestures\npc_woman_gestures.mdl"

$includemodel "NPC\Leanna\npc_Leanna_cinematic_ext.mdl"
//$includemodel "NPC\villager_female\npc_villager_female_animations_cinematics.mdl"
//$includemodel "NPC\servant_specter\npc_servant_specter_animations.mdl"

//---------------------- RETAKE ------------------------------------------------

$makenoloopgesture gesture_arms_10       "leanna_gesture_great_retake"   7 26 35
$makenoloopgesture gesture_arms_13       "leanna_gesture_generic_r_retake"   8 40 50


// ------------ DEAD BODY POSITION ---------------------------------------------------------------------------------------------------------------------

$keyvalues
{
 "prop_data"
 {
 }
 	"entity_data"
	{
		"deathgroup0" "1"
		"deathgroup1" "2"
	}
}








