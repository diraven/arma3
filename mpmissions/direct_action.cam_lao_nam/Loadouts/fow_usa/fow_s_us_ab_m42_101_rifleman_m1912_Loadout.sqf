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
_obj addWeapon "fow_w_M1912";
_obj addPrimaryWeaponItem "fow_6Rnd_12G_Pellets";
_obj addWeapon "LIB_M1A1_Bazooka";
_obj addSecondaryWeaponItem "LIB_1Rnd_60mm_M6";
_obj addWeapon "LIB_Colt_M1911";
_obj addHandgunItem "LIB_7Rnd_45ACP";

comment "Add containers";
_obj forceAddUniform "fow_u_us_m42_ab_01_101_private";
_obj addVest "fow_v_us_ab_bar";
_obj addBackpack "fow_b_usmc_m1928_02";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_US";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToUniform "fow_w_acc_M1897_bayo";
for "_i" from 1 to 3 do {_obj addItemToUniform "LIB_7Rnd_45ACP";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_mk2";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_no77";};
for "_i" from 1 to 9 do {_obj addItemToVest "fow_6Rnd_12G_Pellets";};
for "_i" from 1 to 4 do {_obj addItemToVest "fow_6Rnd_12G_Slug";};
_obj addItemToBackpack "LIB_ToolKit";
_obj addItemToBackpack "LIB_US_TNT_4pound_mag";
_obj addHeadgear "fow_h_us_m2";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
