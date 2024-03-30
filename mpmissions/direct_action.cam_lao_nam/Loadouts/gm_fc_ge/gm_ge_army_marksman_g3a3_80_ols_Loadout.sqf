
_obj = param [0];

if (!local _obj) exitWith {};

comment "Remove existing items";
removeAllWeapons _obj;
removeAllItems _obj;
removeAllAssignedItems _obj;
removeUniform _obj;
removeVest _obj;
removeBackpack _obj;
removeHeadgear _obj;
removeGoggles _obj;

comment "Add weapons";
_obj addWeapon "UK3CB_G3SG1";
_obj addPrimaryWeaponItem "uk3cb_optic_STANAGZF2D_G3";
_obj addPrimaryWeaponItem "UK3CB_G3_20rnd_762x51_RT";
_obj addWeapon "gm_p1_blk";
_obj addHandgunItem "gm_8Rnd_9x19mm_B_DM11_p1_blk";

comment "Add containers";
_obj forceAddUniform "gm_ge_army_uniform_soldier_80_oli";
_obj addVest "gm_ge_army_vest_80_rifleman";

comment "Add binoculars";
_obj addWeapon "rhsusf_bino_lerca_1200_black";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_obj addItemToUniform "gm_8Rnd_9x19mm_B_DM11_p1_blk";};
_obj addItemToVest "uk3cb_muzzle_snds_g3";
_obj addItemToVest "gm_smokeshell_blu_gc";
_obj addItemToVest "gm_smokeshell_grn_gc";
_obj addItemToVest "gm_smokeshell_red_gc";
for "_i" from 1 to 2 do {_obj addItemToVest "gm_smokeshell_wht_dm25";};
for "_i" from 1 to 5 do {_obj addItemToVest "UK3CB_G3_20rnd_762x51_RT";};
_obj addHeadgear "gm_ge_headgear_hat_boonie_oli";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "gm_ge_army_conat2";
_obj linkItem "gm_watch_kosei_80";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "UK3CB_PVS5A";

