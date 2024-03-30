
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
_obj addPrimaryWeaponItem "OPTRE_M7_Sight";
_obj addPrimaryWeaponItem "OPTRE_60Rnd_5x23mm_Mag";

comment "Add containers";
_obj forceAddUniform "OPTRE_UNSC_Navy_Uniform_Olive";
_obj addVest "OPTRE_UNSC_M52A_Armor4_MAR";
_obj addBackpack "B_LegStrapBag_black_F";

comment "Add binoculars";
_obj addWeapon "OPTRE_Binoculars";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToUniform "SmokeShellPurple";
for "_i" from 1 to 5 do {_obj addItemToVest "OPTRE_60Rnd_5x23mm_Mag";};
for "_i" from 1 to 3 do {_obj addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_obj addItemToVest "SmokeShellRed";};
for "_i" from 1 to 3 do {_obj addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 3 do {_obj addItemToVest "B_IR_Grenade";};
_obj addItemToBackpack "ToolKit";
_obj addHeadgear "OPTRE_UNSC_CH252_Helmet2_Vacuum_MAR";
_obj addGoggles "OPTRE_HUD_w_Glasses";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "OPTRE_NVG";
