
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
_obj addWeapon "rhs_weap_m249_pip_ris";
_obj addPrimaryWeaponItem "rhsusf_acc_wmx_bk";
_obj addPrimaryWeaponItem "rhsusf_acc_ELCAN";
_obj addPrimaryWeaponItem "rhsusf_200rnd_556x45_mixed_box";
_obj addPrimaryWeaponItem "rhsusf_acc_saw_bipod";
_obj addWeapon "rhsusf_weap_m9";
_obj addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

comment "Add containers";
_obj forceAddUniform "rhs_uniform_FROG01_d";
_obj addVest "rhsusf_spc_mg";
_obj addBackpack "rhsusf_assault_eagleaiii_coy";

comment "Add binoculars";
_obj addWeapon "rhsusf_bino_m24";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";};
_obj addItemToVest "rhsusf_acc_nt4_black";
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_m67";};
_obj addItemToVest "rhs_mag_m18_red";
_obj addItemToVest "rhs_mag_m18_green";
_obj addItemToVest "rhs_mag_m18_purple";
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 4 do {_obj addItemToBackpack "rhsusf_200rnd_556x45_mixed_box";};
_obj addHeadgear "rhsusf_lwh_helmet_marpatd_headset";
_obj addGoggles "G_Balaclava_TI_blk_F";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "rhsusf_ANPVS_14";
