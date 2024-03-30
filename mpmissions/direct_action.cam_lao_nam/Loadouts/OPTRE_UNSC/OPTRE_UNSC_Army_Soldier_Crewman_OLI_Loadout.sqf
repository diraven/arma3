
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
_obj addWeapon "OPTRE_M7";
_obj addPrimaryWeaponItem "OPTRE_60Rnd_5x23mm_Mag_tracer";
_obj addWeapon "OPTRE_M6C";
_obj addHandgunItem "OPTRE_12Rnd_127x40_Mag";

comment "Add containers";
_obj forceAddUniform "OPTRE_UNSC_Army_Uniform_URB";
_obj addVest "OPTRE_UNSC_M52A_Armor3_DES";
_obj addBackpack "B_LegStrapBag_black_F";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "OPTRE_12Rnd_127x40_Mag";};
for "_i" from 1 to 2 do {_obj addItemToVest "OPTRE_M9_Frag";};
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
for "_i" from 1 to 8 do {_obj addItemToVest "OPTRE_60Rnd_5x23mm_Mag_tracer";};
_obj addItemToVest "SmokeShellBlue";
_obj addItemToBackpack "ToolKit";
_obj addHeadgear "OPTRE_UNSC_CH252_Helmet2_Vacuum_DES";
_obj addGoggles "OPTRE_HUD_w_Glasses";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "OPTRE_NVG";

