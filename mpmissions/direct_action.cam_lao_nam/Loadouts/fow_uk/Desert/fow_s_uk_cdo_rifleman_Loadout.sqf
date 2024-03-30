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
_obj addWeapon "LIB_M1_Garand";
_obj addPrimaryWeaponItem "LIB_8Rnd_762x63";
_obj addWeapon "LIB_Webley_mk6";
_obj addHandgunItem "LIB_6Rnd_455";

comment "Add containers";
_obj forceAddUniform "U_LIB_UK_KhakiDrills";
_obj addVest "fow_v_uk_base";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_UK";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "LIB_6Rnd_455";};
_obj addItemToVest "LIB_ACC_M1_Bayo";
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_no77";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_no36mk1";};
for "_i" from 1 to 10 do {_obj addItemToVest "LIB_8Rnd_762x63";};
_obj addHeadgear "fow_h_uk_beret_sas_2";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
