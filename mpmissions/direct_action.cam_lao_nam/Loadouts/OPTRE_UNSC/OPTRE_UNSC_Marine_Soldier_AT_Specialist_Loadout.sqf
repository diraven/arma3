
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
_obj addWeapon "OPTRE_M41_SSR_G";
_obj addSecondaryWeaponItem "OPTRE_M41_Twin_HEAT_G";
_obj addWeapon "OPTRE_M6C";
_obj addHandgunItem "OPTRE_12Rnd_127x40_Mag";

comment "Add containers";
_obj forceAddUniform "OPTRE_UNSC_Marine_Uniform";
_obj addVest "OPTRE_UNSC_M52A_Armor_Rifleman_MAR";
_obj addBackpack "OPTRE_UNSC_Rucksack";

comment "Add binoculars";
_obj addWeapon "OPTRE_Binoculars";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "OPTRE_12Rnd_127x40_Mag";};
_obj addItemToVest "OPTRE_MA5Suppressor";
for "_i" from 1 to 2 do {_obj addItemToVest "OPTRE_M9_Frag";};
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
_obj addItemToVest "SmokeShellRed";
_obj addItemToVest "SmokeShellGreen";
for "_i" from 1 to 7 do {_obj addItemToVest "OPTRE_32Rnd_762x51_Mag";};
_obj addItemToVest "SmokeShellBlue";
for "_i" from 1 to 4 do {_obj addItemToBackpack "OPTRE_M41_Twin_HEAT_G";};
_obj addHeadgear "OPTRE_UNSC_CH252_Helmet_MAR";
_obj addGoggles "OPTRE_HUD_w_Glasses";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "OPTRE_NVG";

