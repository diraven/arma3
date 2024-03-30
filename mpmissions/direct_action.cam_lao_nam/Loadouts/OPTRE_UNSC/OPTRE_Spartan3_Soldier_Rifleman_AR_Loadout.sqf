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
_obj addWeapon "OPTRE_MA37";
_obj addPrimaryWeaponItem "OPTRE_32Rnd_762x51_Mag";
_obj addWeapon "OPTRE_M6C";
_obj addHandgunItem "OPTRE_M6C_compensator";
_obj addHandgunItem "OPTRE_M6C_Laser";
_obj addHandgunItem "OPTRE_M6C_Scope";
_obj addHandgunItem "OPTRE_12Rnd_127x40_Mag";

comment "Add containers";
_obj forceAddUniform "OPTRE_MJOLNIR_Undersuit";
_obj addVest "OPTRE_MJOLNIR_MkVBArmor";
_obj addBackpack "OPTRE_ILCS_Rucksack_Black_Spartan";

comment "Add binoculars";
_obj addWeapon "OPTRE_Binoculars";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToUniform "SmokeShellPurple";
for "_i" from 1 to 3 do {_obj addItemToUniform "SmokeShell";};
for "_i" from 1 to 3 do {_obj addItemToUniform "SmokeShellRed";};
for "_i" from 1 to 3 do {_obj addItemToUniform "SmokeShellGreen";};
for "_i" from 1 to 2 do {_obj addItemToUniform "OPTRE_M9_Frag";};
for "_i" from 1 to 6 do {_obj addItemToVest "OPTRE_12Rnd_127x40_Mag";};
for "_i" from 1 to 14 do {_obj addItemToVest "OPTRE_32Rnd_762x51_Mag";};
_obj addItemToBackpack "SatchelCharge_Remote_Mag";
_obj addHeadgear "OPTRE_MJOLNIR_Mk4Helmet";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";

comment "Set identity";
[_obj,"Default",""] call BIS_fnc_setIdentity;
