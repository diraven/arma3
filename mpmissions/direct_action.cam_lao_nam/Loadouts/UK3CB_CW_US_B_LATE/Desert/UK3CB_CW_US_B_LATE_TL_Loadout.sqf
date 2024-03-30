
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
_obj addWeapon "UK3CB_M16A2_UGL";
_obj addPrimaryWeaponItem "rhsusf_acc_ACOG";
_obj addPrimaryWeaponItem "30Rnd_556x45_Stanag_red";
_obj addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
_obj addWeapon "rhsusf_weap_m9";
_obj addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

comment "Add containers";
_obj forceAddUniform "UK3CB_ADR_B_U_CombatUniform_01_CC";
_obj addVest "UK3CB_CW_US_B_LATE_V_PASGT_Rif_Vest";
_obj addBackpack "UK3CB_CW_US_B_LATE_B_RIF_02";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 2 do {_obj addItemToUniform "Chemlight_green";};
for "_i" from 1 to 8 do {_obj addItemToVest "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 10 do {_obj addItemToVest "30Rnd_556x45_Stanag_red";};
for "_i" from 1 to 3 do {_obj addItemToVest "1Rnd_Smoke_Grenade_shell";};
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 3 do {_obj addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_m67";};
_obj addItemToBackpack "SatchelCharge_Remote_Mag";
_obj addItemToBackpack "UGL_FlareWhite_F";
_obj addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";
_obj addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";
_obj addHeadgear "UK3CB_H_ACH_CC";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "UK3CB_ANPVS7";
