
// ---------------------------------------------------------------------------------------------------------------------------------------
//
//		WIZARD CLASS
//
//	Wizard	(master)
//	necromancer
//	necromancer_lord
//	lich
//	lich king
//	Arantir
//	Menelag
//	Phenrig
//
// ---------------------------------------------------------------------------------------------------------------------------------------


//----- REFERENCE -------------------------------------------------------------------------------------------------------------------------------------

//$include "../wizard/wizard_eyes.qci"
//$include "../necromancer/necromancer_eyes.qci"
//$include "../necromancer_lord/necromancer_lord_eyes.qci"
//$include "../lich/lich_eyes.qci"
//$include "../lich_king/lich_king_eyes.qci"
//$include "../Arantir/Arantir_eyes.qci"
//$include "../Menelag/Menelag_eyes.qci"
$include "../Phenrig/Phenrig_eyes.qci"


// ----- EXPORTED MODEL ------------------------------------------------------------------------------------------------------------------------------

//$modelname NPC\Wizard\Npc_wizard.mdl
//$modelname NPC\Necromancer\Npc_necromancer.mdl
//$modelname NPC\Necromancer_lord\Npc_necromancer_lord.mdl
//$modelname NPC\Lich\Npc_lich.mdl
//$modelname NPC\Lich_king\Npc_lich_king.mdl
//$modelname NPC\Arantir\Npc_arantir.mdl
//$modelname NPC\Menelag\Npc_menelag.mdl
$modelname NPC\Phenrig\Npc_phenrig_cinematic.mdl

// ------ BONES --------------------------------------------------------------------------------------------------------------------------------------------

$include "../shared/humans_bones_man.qci"

$poseparameter "move_yaw" -180 180 wrap


//----- ATTACHMENTS --------------------------------------------------------------------------------------------------------------------------

$attachment "Center" 		"SK_Root" 		0 0 0	rotate -90 -90 0 
$attachment "Chest" 		"SK_Spine_3" 		0 0 0	rotate -90 -90 0

$attachment "LeftHand" 		"SK_L_Hand" 		4 -1.00 0.00 rotate -90 0 0
$attachment "RightHand" 	"SK_R_Hand" 		4 0.50 0.00 rotate -90 0 0

$attachment "Purse" 		"SK_Root" 		-8.00 1.00 0.00 	rotate 90 162 0
$attachment "CutHead" 		"SK_Head" 		0.00 0.00 0.00	rotate 0 -90 0

$attachment "Neck" 		"SK_Neck" 		0.00 2.00 0.00		rotate -90 90 180
$attachment "Backstab" 		"SK_Spine_4" 		0.00 0.00 -6.00		rotate -90 90 180

$attachment "Hook" 		"SK_L_Hand" 		4 -1.00 0.00 rotate -90 0 0
$attachment "Book"		"SK_L_Hand"		8.00 -0.30 0.00 rotate 0 -180 -90

//$attachment "crown" 		"SK_Head" 		8.00 0.00 0.80 rotate -89 -0 -180 //ONLY FOR LICH_KING

// ----- HITBOX GROUP ----------------------------------------------------------------------------------------------------------------------

$hgroup 1 "SK_Neck"
$hgroup 2 "SK_Spine_2"
$hgroup 3 "SK_Spine_3"
$hgroup 4 "SK_L_Shoulder"
$hgroup 5 "SK_R_Shoulder"
$hgroup 6 "SK_L_Leg"
$hgroup 7 "SK_R_Leg"


// ----- INCLUDED QCI ----------------------------------------------------------------------------------------------------------------------

$include "../shared/humans_weightlists.qci"
$include "../shared/humans_ikchains.qci"
$include "../wizard/wizard_ragdoll.qci"
$include "../wizard/wizard_body_poses.qci"
$include "../wizard/wizard_Hitbox.qci"


//$include "../wizard/wizard_lod.qci"
//$include "../necromancer/necromancer_lod.qci"
//$include "../necromancer_lord/necromancer_lord_lod.qci"
//$include "../lich/lich_lod.qci"
//$include "../lich_king/lich_king_lod.qci"


// ----- INCLUDED ANIMATIONS -----------------------------------------------------------------------------------------------------------------


// Wizard
//$includemodel "NPC\wizard\npc_wizard_animations_combat.mdl"
//$includemodel "NPC\wizard\npc_wizard_animations_movement.mdl"
//$includemodel "NPC\wizard\npc_wizard_animations_cinematics.mdl"


// Necromancer / Necromancer lord
//$includemodel "NPC\necromancer\npc_necromancer_animations_combat.mdl"
//$includemodel "NPC\necromancer\npc_necromancer_animations_movement.mdl"
//$includemodel "NPC\necromancer\npc_necromancer_animations_cinematics.mdl"


// Lich / Lich king
//$includemodel "NPC\lich\npc_lich_animations_combat.mdl"
//$includemodel "NPC\lich\npc_lich_animations_movement.mdl"
//$includemodel "NPC\lich\npc_lich_animations_cinematics.mdl"


// Phenrig
$includemodel "NPC\wizard\npc_wizard_animations_combat.mdl"
$includemodel "NPC\wizard\npc_wizard_animations_movement.mdl"
$includemodel "NPC\phenrig\npc_phenrig_cinematic_ext.mdl"


// Arantir
//$includemodel "NPC\necromancer\npc_necromancer_animations_combat.mdl"
//$includemodel "NPC\necromancer\npc_necromancer_animations_movement.mdl"
//$includemodel "NPC\arantir\npc_arantir_animations_cinematics.mdl"


// Menelag
//$includemodel "NPC\wizard\npc_wizard_animations_combat.mdl"
//$includemodel "NPC\wizard\npc_wizard_animations_movement.mdl"
//$includemodel "NPC\menelag\npc_menelag_animations_cinematics.mdl"



// Shared
$includemodel "NPC\shared\animations\npc_man_animations.mdl"
$includemodel "NPC\shared\gestures\npc_man_gestures.mdl"


// ----- BIND POSE -----------------------------------------------------------------------------------------------------------------------------

//$sequence reference		"../wizard/wizard_reference"
//$sequence reference		"../necromancer/necromancer_reference"
//$sequence reference		"../necromancer_lord/necromancer_lord_reference"
//$sequence reference		"../lich/lich_reference"
//$sequence reference		"../lich_king/lich_king_reference"
//$sequence reference		"../Arantir/Arantir_reference"
//$sequence reference		"../menelag/menelag_reference"
$sequence reference		"../Phenrig/Phenrig_reference"

// ----- DEAD BODY POSITION ---------------------------------------------------------------------------------------------------------------------
/*
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
*/
// ------------ REFERENCE HIDDEN GROUPS ------------------------------------------------------------------------------------------------------------
/*
$hidegroups cutedparts { SMG_LeftArm_Part SMG_RightArm_Part SMG_Head_Part  }


// ------------ LIMBS ------------------------------------------------------------------------------------------------------------



$limbs noHead
{
	hide			SMG_Head
	hidebonetree		SK_Head
	hidegroup cutedparts { SMG_LeftArm_Part SMG_RightArm_Part }
}

$limbs noLeftArm
{
	hide			SMG_Leftarm
	hidebonetree		SK_L_Shoulder
	hidegroup cutedparts { SMG_RightArm_Part SMG_Head_Part }
}

$limbs noRightArm
{
	hide			SMG_RightArm
	hidebonetree		SK_R_Elbow
	hidegroup cutedparts {  SMG_LeftArm_Part SMG_Head_Part }
}
*/