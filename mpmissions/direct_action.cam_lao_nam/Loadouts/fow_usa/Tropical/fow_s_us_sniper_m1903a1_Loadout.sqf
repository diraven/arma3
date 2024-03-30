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
_obj addWeapon "LIB_M1903A4_Springfield";
_obj addPrimaryWeaponItem "LIB_5Rnd_762x63";
_obj addWeapon "LIB_Colt_M1911";
_obj addHandgunItem "LIB_7Rnd_45ACP";

comment "Add containers";
_obj forceAddUniform "fow_u_usmc_p41_01_private";
_obj addVest "fow_v_usmc_garand";
_obj addBackpack "fow_b_usmc_m1928_02";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_US";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "LIB_7Rnd_45ACP";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_mk2";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_no77";};
for "_i" from 1 to 10 do {_obj addItemToVest "LIB_5Rnd_762x63";};
_obj addHeadgear "fow_h_usmc_m1_camo_01";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";

