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
_obj addWeapon "LIB_M1928_Thompson";
_obj addPrimaryWeaponItem "LIB_30Rnd_45ACP";
_obj addWeapon "LIB_Webley_mk6";
_obj addHandgunItem "LIB_6Rnd_455";

comment "Add containers";
_obj forceAddUniform "fow_u_uk_bd40_sergeant";
_obj addVest "fow_v_uk_sten";
_obj addBackpack "fow_b_uk_p37";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_UK";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_obj addItemToUniform "LIB_6Rnd_455";};
for "_i" from 1 to 8 do {_obj addItemToVest "LIB_30Rnd_45ACP";};
_obj addItemToVest "fow_e_no36mk1";
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_no77";};
_obj addItemToBackpack "LIB_US_TNT_4pound_mag";
_obj addHeadgear "fow_h_uk_mk2";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
