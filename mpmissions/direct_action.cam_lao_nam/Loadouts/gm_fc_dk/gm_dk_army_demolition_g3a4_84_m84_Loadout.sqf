
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
_obj addWeapon "gm_gvm75_blk";
_obj addPrimaryWeaponItem "gm_20Rnd_762x51mm_B_T_DM21_g3_blk";
_obj addWeapon "gm_p1_blk";
_obj addHandgunItem "gm_8Rnd_9x19mm_B_DM11_p1_blk";

comment "Add containers";
_obj forceAddUniform "gm_dk_army_uniform_soldier_84_m84";
_obj addVest "gm_dk_army_vest_54_rifleman";
_obj addBackpack "gm_dk_army_backpack_73_oli";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 2 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_obj addItemToUniform "gm_8Rnd_9x19mm_B_DM11_p1_blk";};
for "_i" from 1 to 2 do {_obj addItemToVest "gm_handgrenade_frag_dm51";};
for "_i" from 1 to 7 do {_obj addItemToVest "gm_20Rnd_762x51mm_B_T_DM21_g3_blk";};
_obj addItemToVest "gm_smokeshell_blu_gc";
_obj addItemToVest "gm_smokeshell_grn_gc";
_obj addItemToVest "gm_smokeshell_red_gc";
_obj addItemToVest "gm_smokeshell_wht_gc";
_obj addItemToBackpack "MineDetector";
_obj addItemToBackpack "ToolKit";
for "_i" from 1 to 2 do {_obj addItemToBackpack "SatchelCharge_Remote_Mag";};
_obj addHeadgear "gm_dk_headgear_m52_net_oli";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
