
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
_obj addWeapon "rhsusf_weap_MP7A2";
_obj addPrimaryWeaponItem "rhsusf_acc_rotex_mp7";
_obj addPrimaryWeaponItem "rhsusf_acc_wmx_bk";
_obj addPrimaryWeaponItem "rhsusf_acc_compm4";
_obj addPrimaryWeaponItem "rhsusf_mag_40Rnd_46x30_FMJ";
_obj addWeapon "hgun_jpa_p226_F";
_obj addHandgunItem "acc_jpa_flash_gun";
_obj addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_obj forceAddUniform "Japan_JP_Jeitai_Uniform_base";
_obj addVest "Japan_Jeitai_TacVestIR_blk";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "16Rnd_9x21_Mag";};
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
for "_i" from 1 to 8 do {_obj addItemToVest "rhsusf_mag_40Rnd_46x30_FMJ";};
_obj addHeadgear "Japan_Jeitai_Mich";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "Jp_Goggles_NV";
