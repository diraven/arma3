
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
_obj addWeapon "UK3CB_HK33KA1";
_obj addPrimaryWeaponItem "UK3CB_HK33_30rnd_556x45_RT";
_obj addWeapon "gm_pzf3_blk";
_obj addSecondaryWeaponItem "gm_1Rnd_60mm_heat_dm32_pzf3";
_obj addWeapon "gm_p1_blk";
_obj addHandgunItem "gm_8Rnd_9x19mm_B_DM11_p1_blk";

comment "Add containers";
_obj forceAddUniform "gm_ge_uniform_soldier_90_trp";
_obj addVest "gm_ge_vest_90_rifleman_flk";
_obj addBackpack "gm_ge_army_backpack_90_trp";

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
for "_i" from 1 to 7 do {_obj addItemToVest "UK3CB_HK33_30rnd_556x45_RT";};
for "_i" from 1 to 2 do {_obj addItemToBackpack "gm_1Rnd_60mm_heat_dm32_pzf3";};
_obj addHeadgear "gm_ge_headgear_m92_trp";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "gm_ge_army_conat2";
_obj linkItem "gm_watch_kosei_80";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "UK3CB_PVS5A";



