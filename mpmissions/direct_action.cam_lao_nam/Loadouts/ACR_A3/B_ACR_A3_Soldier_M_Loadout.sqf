
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
_obj addWeapon "ACR_A3_CZ_BREN2_762_14";
_obj addPrimaryWeaponItem "rhsusf_acc_aac_762sd_silencer";
_obj addPrimaryWeaponItem "rhsusf_acc_wmx_bk";
_obj addPrimaryWeaponItem "rhsusf_acc_premier";
_obj addPrimaryWeaponItem "30Rnd_762x39_Mag_F";
_obj addWeapon "ACR_A3_hgun_Duty";
_obj addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_obj forceAddUniform "U_ACR_A3_CombatUniform";
_obj addVest "V_ACR_A3_NPP2006_nk";

comment "Add binoculars";
_obj addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "16Rnd_9x21_Mag";};
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_762x39_Mag_F";};
_obj addHeadgear "H_ACR_A3_HelmetIA_Headset_vz95";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "rhsusf_ANPVS_14";
