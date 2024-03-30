
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
_obj addWeapon "arifle_AKS_F";
_obj addPrimaryWeaponItem "30Rnd_545x39_Mag_Tracer_Green_F";
_obj addWeapon "launch_B_Titan_olive_F";
_obj addSecondaryWeaponItem "Titan_AA";
_obj addWeapon "hgun_ACPC2_F";
_obj addHandgunItem "9Rnd_45ACP_Mag";

comment "Add containers";
_obj forceAddUniform "U_BG_Guerilla3_1";
_obj addVest "V_Chestrig_oli";
_obj addBackpack "B_Kitbag_rgr";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToUniform "9Rnd_45ACP_Mag";
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
_obj addItemToVest "SmokeShellBlue";
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
for "_i" from 1 to 12 do {_obj addItemToVest "30Rnd_545x39_Mag_Tracer_Green_F";};
for "_i" from 1 to 2 do {_obj addItemToBackpack "Titan_AA";};
_obj addHeadgear "H_Shemag_olive";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";

