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
_obj addPrimaryWeaponItem "rhsusf_acc_wmx_bk";
_obj addPrimaryWeaponItem "rhsusf_acc_compm4";
_obj addPrimaryWeaponItem "rhsusf_mag_40Rnd_46x30_FMJ";
_obj addWeapon "BWA3_P8";
_obj addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
_obj forceAddUniform "BWA3_Uniform_Helipilot";
_obj addVest "V_LegStrapBag_black_F";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_obj addItemToUniform "rhsusf_mag_40Rnd_46x30_FMJ";};
_obj addItemToUniform "SmokeShellGreen";
_obj addItemToUniform "SmokeShellRed";
_obj addItemToVest "ToolKit";
_obj addHeadgear "rhsusf_hgu56p_visor_black";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";

