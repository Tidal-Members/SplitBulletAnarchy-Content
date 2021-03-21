// Created by Crowbar 0.68

$modelname "splitbullet/weapons/w_sbshotgun.mdl"

$bodygroup "w_sbshotgun"
{
	studio "w_sbshotgun.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.046 -1.042 -2.28

$cdmaterials "models\splitbullet\weapons\"

$attachment "muzzle" "weapon_bone" 1.5 15.5 0 rotate 0 100 180
$attachment "1" "weapon_bone" 2.75 6 0 rotate 90 -75 0

$cbox 0 0 0 0 0 0

$bbox -7.089 -1.047 -10.67 9.173 1.14 6.11

$definebone "handr" "" 0 -0.65037 5.509216 1.873228 -7.32051 -75.723876 0 0 0 0 0 0
$definebone "weapon_bone" "handr" 0 2.615905 0 62.680783 -69.211072 -67.15845 0 0 0 0 0 0


$sequence "idle" {
	"w_sbshotgun.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_sbshotgun.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event AE_NPC_MUZZLEFLASH 0 "PISTOL muzzle" }
	{ event CL_EVENT_EJECTBRASS1 0 "0" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 5
}

$sequence "attack_npc" {
	"w_sbshotgun.smd"
	activity "ACT_RANGE_ATTACK_PISTOL" -1
	{ event AE_NPC_MUZZLEFLASH 0 "PISTOL muzzle" }
	{ event CL_EVENT_EJECTBRASS1 0 "0" }
	{ event 3014 0 "" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 5
}
