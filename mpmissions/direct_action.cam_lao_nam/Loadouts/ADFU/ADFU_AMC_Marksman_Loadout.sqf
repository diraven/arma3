
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
_obj addWeapon "rhs_weap_m14ebrri";
_obj addPrimaryWeaponItem "acc_flashlight";
_obj addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4";
_obj addPrimaryWeaponItem "rhsusf_20Rnd_762x51_m62_Mag";
_obj addPrimaryWeaponItem "bipod_01_F_blk";
_obj addWeapon "ADFU_hpII";
_obj addHandgunItem "ADFU_13Rnd_45ACP_Mag";

comment "Add containers";
_obj forceAddUniform "ADFU_G3_AMC";
_obj addVest "ADFU_V_TBAS_Light_AMC";
_obj addBackpack "ADFU_Assaultpack_AMC";

comment "Add binoculars";
_obj addWeapon "rhsusf_bino_m24";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "ADFU_13Rnd_45ACP_Mag";};
_obj addItemToVest "rhs_mag_m18_red";
_obj addItemToVest "rhs_mag_m18_purple";
_obj addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_grenade_anm8_mag";};
for "_i" from 1 to 4 do {_obj addItemToVest "rhsusf_20Rnd_762x51_m62_Mag";};
for "_i" from 1 to 4 do {_obj addItemToBackpack "rhsusf_20Rnd_762x51_m62_Mag";};
_obj addItemToBackpack "SatchelCharge_Remote_Mag";
_obj addHeadgear "ADFU_H_Airframe_Cover_03_AMC";
_obj addGoggles "rhs_googles_clear";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "rhsusf_ANPVS_14";

