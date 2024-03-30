
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
_obj addWeapon "arifle_AKM_F";
_obj addPrimaryWeaponItem "30Rnd_762x39_Mag_F";
_obj addWeapon "Crowbar";

comment "Add containers";
_obj forceAddUniform "U_BG_Guerrilla_6_1";
_obj addVest "V_TacVest_oli";
_obj addBackpack "B_Kitbag_rgr";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
_obj addItemToVest "SmokeShellBlue";
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
for "_i" from 1 to 6 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
_obj addHeadgear "H_Cap_tan_specops_US";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";


