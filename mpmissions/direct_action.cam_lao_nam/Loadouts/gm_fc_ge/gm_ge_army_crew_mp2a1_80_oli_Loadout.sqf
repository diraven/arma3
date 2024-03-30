
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
_obj addWeapon "gm_mp5a3_blk";
_obj addPrimaryWeaponItem "gm_30Rnd_9x19mm_B_DM51_mp5_blk";
_obj addWeapon "gm_p1_blk";
_obj addHandgunItem "gm_8Rnd_9x19mm_B_DM11_p1_blk";

comment "Add containers";
_obj forceAddUniform "gm_ge_army_uniform_crew_80_oli";
_obj addVest "gm_ge_army_vest_80_crew";
_obj addBackpack "B_LegStrapBag_black_F";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_obj addItemToUniform "gm_8Rnd_9x19mm_B_DM11_p1_blk";};
_obj addItemToVest "gm_smokeshell_blu_gc";
_obj addItemToVest "gm_smokeshell_grn_gc";
_obj addItemToVest "gm_smokeshell_red_gc";
for "_i" from 1 to 2 do {_obj addItemToVest "gm_smokeshell_wht_dm25";};
for "_i" from 1 to 2 do {_obj addItemToVest "gm_handgrenade_frag_dm51a1";};
for "_i" from 1 to 5 do {_obj addItemToVest "gm_30Rnd_9x19mm_B_DM51_mp5_blk";};
_obj addItemToBackpack "ToolKit";
_obj addHeadgear "gm_ge_headgear_beret_crew_blk_armor";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "gm_ge_army_conat2";
_obj linkItem "gm_watch_kosei_80";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "UK3CB_PVS5A";

comment "Set identity";
[_obj,"Default","male03eng"] call BIS_fnc_setIdentity;

