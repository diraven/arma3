
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
_obj addWeapon "hgun_P07_F";
_obj addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_obj forceAddUniform "U_B_PilotCoveralls";
_obj addBackpack "B_Parachute";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToUniform "SmokeShell";
_obj addItemToUniform "SmokeShellBlue";
_obj addItemToUniform "SmokeShellRed";
_obj addItemToUniform "SmokeShellGreen";
for "_i" from 1 to 3 do {_obj addItemToUniform "16Rnd_9x21_Mag";};
_obj addHeadgear "H_PilotHelmetFighter_B";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
