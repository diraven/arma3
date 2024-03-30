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
_obj addWeapon "CSA38_OwenMkI2";
_obj addPrimaryWeaponItem "csa38_33_9x19";
_obj addWeapon "LIB_PIAT";
_obj addSecondaryWeaponItem "LIB_1Rnd_89m_PIAT";
_obj addWeapon "LIB_Webley_mk6";
_obj addHandgunItem "LIB_6Rnd_455";

comment "Add containers";
_obj forceAddUniform "fow_u_aus_m37_03_private";
_obj addVest "fow_v_uk_sten";
_obj addBackpack "fow_b_uk_bergenpack";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_UK";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_obj addItemToUniform "LIB_6Rnd_455";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_no36mk1";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_no77";};
for "_i" from 1 to 10 do {_obj addItemToVest "csa38_33_9x19";};
_obj addItemToBackpack "LIB_ToolKit";
for "_i" from 1 to 3 do {_obj addItemToBackpack "LIB_1Rnd_89m_PIAT";};
_obj addHeadgear "fow_h_uk_jungle_hat_02";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";