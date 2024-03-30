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
_obj addWeapon "LIB_MG34";
_obj addPrimaryWeaponItem "LIB_50Rnd_792x57";
_obj addWeapon "LIB_P38";
_obj addHandgunItem "LIB_8Rnd_9x19";

comment "Add containers";
_obj forceAddUniform "U_LIB_DAK_Soldier_2";
_obj addVest "fow_v_heer_mg";
_obj addBackpack "csa38_GEBatoh9";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_GER";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_obj addItemToUniform "LIB_8Rnd_9x19";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_nb39b";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_m24";};
for "_i" from 1 to 2 do {_obj addItemToVest "LIB_50Rnd_792x57";};
for "_i" from 1 to 5 do {_obj addItemToBackpack "LIB_50Rnd_792x57";};
_obj addHeadgear "H_LIB_DAK_Helmet_Glasses";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";