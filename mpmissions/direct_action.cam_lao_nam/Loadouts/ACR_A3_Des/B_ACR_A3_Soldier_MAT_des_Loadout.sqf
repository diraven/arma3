
_obj = param [0];

if (!local _obj) exitWith {};


comment "Exported from Arsenal by Billy";

comment "[!] UNIT MUST BE LOCAL [!]";
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
_obj addWeapon "ACR_A3_arifle_CZ805_A1_MC";
_obj addPrimaryWeaponItem "rhsusf_acc_wmx_bk";
_obj addPrimaryWeaponItem "rhsusf_acc_compm4";
_obj addPrimaryWeaponItem "30Rnd_556x45_Stanag";
_obj addWeapon "rhs_weap_maaws";
_obj addSecondaryWeaponItem "rhs_optic_maaws";
_obj addSecondaryWeaponItem "rhs_mag_maaws_HEAT";
_obj addWeapon "ACR_A3_hgun_Duty";
_obj addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_obj forceAddUniform "U_ACR_A3_CombatUniform_Des";
_obj addVest "V_ACR_A3_NPP2006_nk_des";
_obj addBackpack "B_Carryall_cbr";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "16Rnd_9x21_Mag";};
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 3 do {_obj addItemToBackpack "rhs_mag_maaws_HEAT";};
_obj addHeadgear "H_ACR_A3_HelmetIA_Headset_vz95_des";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "rhsusf_ANPVS_14";
