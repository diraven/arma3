
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
_obj addPrimaryWeaponItem "rhsusf_acc_eotech_552";
_obj addPrimaryWeaponItem "rhsusf_mag_40Rnd_46x30_FMJ";
_obj addWeapon "rhsusf_weap_m9";
_obj addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

comment "Add containers";
_obj forceAddUniform "U_B_PilotCoveralls";
_obj addBackpack "B_LegStrapBag_black_F";

comment "Add binoculars";
_obj addWeapon "rhsusf_bino_m24_ARD";

comment "Add items to containers";
for "_i" from 1 to 2 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "rhsusf_mag_40Rnd_46x30_FMJ";};
_obj addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";
_obj addItemToBackpack "ToolKit";
_obj addHeadgear "RHS_jetpilot_usaf";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "rhsusf_ANPVS_14";


