
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

comment "Add containers";
_obj forceAddUniform "U_lxWS_B_CombatUniform_desert_vest";
_obj addVest "V_lxWS_PlateCarrier1_desert";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToUniform "SmokeShellGreen";
_obj addItemToUniform "SmokeShellRed";
_obj addItemToUniform "SmokeShellBlue";
_obj addItemToVest "muzzle_snds_H";
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_obj addItemToVest "30Rnd_65x39_caseless_black_mag_Tracer";};
_obj addHeadgear "lxWS_H_Booniehat_desert";
_obj addGoggles "G_Tactical_Clear";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";

comment "Set identity";
[_obj,"Default","male02eng"] call BIS_fnc_setIdentity;






