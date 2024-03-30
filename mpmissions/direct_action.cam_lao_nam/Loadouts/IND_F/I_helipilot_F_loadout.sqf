
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
_obj addWeapon "hgun_PDW2000_F";
_obj addPrimaryWeaponItem "optic_Holosight_smg_blk_F";
_obj addPrimaryWeaponItem "30Rnd_9x21_Red_Mag";
_obj addWeapon "hgun_ACPC2_F";
_obj addHandgunItem "9Rnd_45ACP_Mag";

comment "Add containers";
_obj forceAddUniform "U_I_HeliPilotCoveralls";
_obj addVest "V_TacVest_oli";
_obj addBackpack "B_LegStrapBag_black_F";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "9Rnd_45ACP_Mag";};
_obj addItemToVest "muzzle_snds_L";
_obj addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 7 do {_obj addItemToVest "30Rnd_9x21_Red_Mag";};
_obj addItemToBackpack "ToolKit";
_obj addHeadgear "H_PilotHelmetHeli_I";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "NVGoggles_INDEP";

comment "Set identity";
[_obj,"Default","male08eng"] call BIS_fnc_setIdentity;

