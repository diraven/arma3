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
_obj addWeapon "LIB_M1_Carbine";
_obj addPrimaryWeaponItem "LIB_15Rnd_762x33";
_obj addWeapon "LIB_M1A1_Bazooka";
_obj addSecondaryWeaponItem "LIB_1Rnd_60mm_M6";
_obj addWeapon "LIB_Colt_M1911";
_obj addHandgunItem "LIB_7Rnd_45ACP";

comment "Add containers";
_obj forceAddUniform "U_LIB_US_NAC_Uniform";
_obj addVest "fow_v_us_carbine";
_obj addBackpack "fow_b_us_rocket_bag";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_US";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "LIB_7Rnd_45ACP";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_mk2";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_no77";};
for "_i" from 1 to 10 do {_obj addItemToVest "LIB_15Rnd_762x33";};
_obj addItemToBackpack "LIB_1Rnd_60mm_M6";
_obj addHeadgear "fow_h_us_m1_folded";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
