
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
_obj addWeapon "UK3CB_BAF_L129A1";
_obj addPrimaryWeaponItem "rhsusf_acc_wmx_bk";
_obj addPrimaryWeaponItem "rhsusf_acc_premier";
_obj addPrimaryWeaponItem "UK3CB_BAF_762_L42A1_20Rnd";
_obj addPrimaryWeaponItem "UK3CB_underbarrel_acc_bipod";
_obj addWeapon "UK3CB_BAF_L131A1";
_obj addHandgunItem "UK3CB_BAF_9_17Rnd";

comment "Add containers";
_obj forceAddUniform "UK3CB_BAF_U_CombatUniform_DDPM_RM";
_obj addVest "UK3CB_BAF_V_Osprey_DDPM1";

comment "Add binoculars";
_obj addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToUniform "UK3CB_BAF_9_17Rnd";
_obj addItemToVest "UK3CB_BAF_Silencer_L115A3";
_obj addItemToVest "rhs_mag_m18_green";
_obj addItemToVest "rhs_mag_m18_red";
_obj addItemToVest "rhs_grenade_anm8_mag";
for "_i" from 1 to 6 do {_obj addItemToVest "UK3CB_BAF_762_L42A1_20Rnd";};
_obj addHeadgear "UK3CB_BAF_H_Boonie_DDPM_PRR";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "UK3CB_BAF_HMNVS";



