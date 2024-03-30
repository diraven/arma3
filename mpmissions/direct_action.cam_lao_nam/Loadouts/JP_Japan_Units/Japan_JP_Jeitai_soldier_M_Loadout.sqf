
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
_obj addWeapon "srifle_jpa_hk417";
_obj addPrimaryWeaponItem "rhsusf_acc_wmx_bk";
_obj addPrimaryWeaponItem "optic_jpa_zeiss_eo";
_obj addPrimaryWeaponItem "20Rnd_762x51_Mag";
_obj addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
_obj addWeapon "hgun_jpa_p226_F";
_obj addHandgunItem "acc_jpa_flash_gun";
_obj addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_obj forceAddUniform "Japan_JP_Jeitai_Uniform_base";
_obj addVest "V_Deltaforce_Jeitai";

comment "Add binoculars";
_obj addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "16Rnd_9x21_Mag";};
_obj addItemToVest "rhsusf_acc_aac_762sdn6_silencer";
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
for "_i" from 1 to 8 do {_obj addItemToVest "20Rnd_762x51_Mag";};
_obj addHeadgear "Japan_Jeitai_Mich";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "Jp_Goggles_NV";
