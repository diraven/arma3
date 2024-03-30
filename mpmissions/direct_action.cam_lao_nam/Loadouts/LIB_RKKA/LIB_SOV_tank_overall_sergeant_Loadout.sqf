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
_obj addWeapon "fow_w_m55_reising";
_obj addPrimaryWeaponItem "fow_20Rnd_45acp";
_obj addWeapon "LIB_M1895";
_obj addHandgunItem "LIB_7Rnd_762x38";

comment "Add containers";
_obj forceAddUniform "U_LIB_SOV_Tank_sergeant";
_obj addVest "V_LIB_SOV_RA_PPShBelt_Mag";
_obj addBackpack "B_LIB_SOV_RA_Rucksack";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_SU";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_obj addItemToUniform "LIB_7Rnd_762x38";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_no77";};
for "_i" from 1 to 2 do {_obj addItemToVest "LIB_Rg42";};
for "_i" from 1 to 7 do {_obj addItemToVest "fow_20Rnd_45acp";};
_obj addItemToBackpack "LIB_ToolKit";
_obj addHeadgear "H_LIB_SOV_TankHelmet";
_obj addGoggles "G_LIB_GER_Gloves4";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";

