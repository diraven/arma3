
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
_obj addWeapon "UK3CB_M14DMR";
_obj addPrimaryWeaponItem "uk3cb_optic_artel_m14";
_obj addPrimaryWeaponItem "20Rnd_762x51_Mag";
_obj addWeapon "rhsusf_weap_m1911a1";
_obj addHandgunItem "rhsusf_mag_7x45acp_MHP";

comment "Add containers";
_obj forceAddUniform "UK3CB_ADR_B_U_CombatUniform_01_CC";
_obj addVest "UK3CB_ADA_B_V_TacVest_BLK";

comment "Add binoculars";
_obj addWeapon "rhsusf_bino_lerca_1200_black";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "rhsusf_mag_7x45acp_MHP";};
for "_i" from 1 to 2 do {_obj addItemToUniform "Chemlight_green";};
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 3 do {_obj addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 10 do {_obj addItemToVest "20Rnd_762x51_Mag";};
_obj addHeadgear "UK3CB_ADA_B_H_BoonieHat_CC";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "UK3CB_ANPVS7";
