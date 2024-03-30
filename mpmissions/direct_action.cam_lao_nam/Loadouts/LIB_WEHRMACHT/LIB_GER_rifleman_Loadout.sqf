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
_obj addWeapon "LIB_K98_Late";
_obj addPrimaryWeaponItem "LIB_5Rnd_792x57";
_obj addPrimaryWeaponItem "LIB_5rnd_MUZZLE_FAKEMAG";
_obj addWeapon "LIB_PzFaust_60m";
_obj addSecondaryWeaponItem "LIB_1Rnd_PzFaust_60m";
_obj addWeapon "LIB_P38";
_obj addHandgunItem "LIB_8Rnd_9x19";

comment "Add containers";
_obj forceAddUniform "fow_u_ger_m43_01_private";
_obj addVest "fow_v_heer_k98";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_GER";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToUniform "LIB_ACC_K98_Bayo";
for "_i" from 1 to 3 do {_obj addItemToUniform "LIB_8Rnd_9x19";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_nb39b";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_m24";};
for "_i" from 1 to 10 do {_obj addItemToVest "LIB_5Rnd_792x57";};
_obj addHeadgear "fow_h_ger_m40_heer_01";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "LIB_GER_ItemCompass_deg";
_obj linkItem "LIB_GER_ItemWatch";
_obj linkItem "ItemRadio";
