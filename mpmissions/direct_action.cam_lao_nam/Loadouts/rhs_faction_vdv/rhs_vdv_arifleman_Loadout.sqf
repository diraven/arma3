
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
_obj addWeapon "rhs_weap_rpk74m";
_obj addPrimaryWeaponItem "rhs_acc_dtkrpk";
_obj addPrimaryWeaponItem "rhs_acc_2dpZenit";
_obj addPrimaryWeaponItem "rhs_acc_pkas";
_obj addPrimaryWeaponItem "rhs_60Rnd_545X39_7N10_AK";
_obj addWeapon "rhs_weap_pya";
_obj addHandgunItem "rhs_mag_9x19_17";

comment "Add containers";
_obj forceAddUniform "rhs_uniform_vkpo_gloves";
_obj addVest "rhs_6b45_mg";
_obj addBackpack "rhs_rk_sht_30_emr";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "rhs_mag_9x19_17";};
_obj addItemToVest "rhs_acc_tgpa";
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_rdg2_white";};
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_rgo";};
_obj addItemToVest "SmokeShellBlue";
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 5 do {_obj addItemToVest "rhs_60Rnd_545X39_7N10_AK";};
for "_i" from 1 to 5 do {_obj addItemToBackpack "rhs_60Rnd_545X39_7N10_AK";};
_obj addHeadgear "rhs_6b47_emr_1";
_obj addGoggles "rhs_facewear_6m2_1";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "rhs_1PN138";
