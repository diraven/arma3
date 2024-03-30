
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
_obj addWeapon "UK3CB_M16A2";
_obj addPrimaryWeaponItem "30Rnd_556x45_Stanag_red";
_obj addWeapon "rhs_weap_fim92";
_obj addSecondaryWeaponItem "rhs_fim92_mag";
_obj addWeapon "rhsusf_weap_m9";
_obj addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

comment "Add containers";
_obj forceAddUniform "UK3CB_CW_US_B_LATE_U_CombatUniform_01_WDL";
_obj addVest "UK3CB_CW_US_B_LATE_V_PASGT_Rif_Vest";
_obj addBackpack "UK3CB_CW_US_B_LATE_B_RIF_02";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 2 do {_obj addItemToUniform "Chemlight_green";};
_obj addItemToVest "SmokeShellRed";
_obj addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_obj addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 10 do {_obj addItemToVest "30Rnd_556x45_Stanag_red";};
_obj addItemToBackpack "SatchelCharge_Remote_Mag";
_obj addItemToBackpack "rhs_fim92_mag";
_obj addHeadgear "UK3CB_CW_US_B_LATE_H_PASGT_01_WDL";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "UK3CB_ANPVS7";
