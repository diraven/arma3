
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
_obj addWeapon "arifle_Katiba_C_F";
_obj addPrimaryWeaponItem "acc_pointer_IR";
_obj addPrimaryWeaponItem "optic_Aco";
_obj addPrimaryWeaponItem "30Rnd_65x39_caseless_green";
_obj addWeapon "hgun_Rook40_F";
_obj addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_obj forceAddUniform "U_O_SpecopsUniform_ocamo";
_obj addVest "V_BandollierB_khk";
_obj addBackpack "B_LegStrapBag_coyote_F";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "16Rnd_9x21_Mag";};
for "_i" from 1 to 4 do {_obj addItemToVest "30Rnd_65x39_caseless_green";};
for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
_obj addItemToVest "SmokeShell";
_obj addItemToVest "SmokeShellRed";
_obj addItemToVest "SmokeShellGreen";
_obj addItemToBackpack "ToolKit";
_obj addHeadgear "H_HelmetCrew_O";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "NVGoggles_OPFOR";
