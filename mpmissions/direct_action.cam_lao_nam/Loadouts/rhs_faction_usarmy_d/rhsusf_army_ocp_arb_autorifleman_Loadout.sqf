
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
_obj addWeapon "rhs_weap_m249_light_S";
_obj addPrimaryWeaponItem "rhsusf_acc_wmx_bk";
_obj addPrimaryWeaponItem "rhsusf_acc_ELCAN_ard";
_obj addPrimaryWeaponItem "rhsusf_200Rnd_556x45_box";
_obj addPrimaryWeaponItem "rhsusf_acc_saw_bipod";
_obj addWeapon "rhsusf_weap_glock17g4";
_obj addHandgunItem "rhsusf_mag_17Rnd_9x19_JHP";

comment "Add containers";
_obj forceAddUniform "rhs_uniform_g3_mc";
_obj addVest "rhsusf_mbav_mg";
_obj addBackpack "rhsusf_falconii_mc";

comment "Add binoculars";
_obj addWeapon "rhsusf_bino_m24_ARD";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";};
_obj addItemToVest "rhsusf_acc_nt4_black";
_obj addItemToVest "rhs_mag_m18_green";
_obj addItemToVest "rhs_mag_m18_red";
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_grenade_anm8_mag";};
_obj addItemToVest "rhsusf_200Rnd_556x45_box";
for "_i" from 1 to 3 do {_obj addItemToBackpack "rhsusf_200Rnd_556x45_box";};
_obj addHeadgear "rhsusf_opscore_mc_cover_pelt_cam";
_obj addGoggles "rhs_googles_black";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "rhsusf_ANPVS_15";

