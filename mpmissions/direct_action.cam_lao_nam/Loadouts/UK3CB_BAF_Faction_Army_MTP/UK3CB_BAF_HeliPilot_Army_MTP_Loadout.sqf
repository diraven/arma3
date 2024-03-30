
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
_obj addWeapon "UK3CB_BAF_L91A1";
_obj addPrimaryWeaponItem "UK3CB_BAF_9_30Rnd";
_obj addWeapon "UK3CB_BAF_L131A1";
_obj addHandgunItem "UK3CB_BAF_9_17Rnd";

comment "Add containers";
_obj forceAddUniform "UK3CB_BAF_U_HeliPilotCoveralls_RN";
_obj addVest "V_TacVest_blk";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToUniform "UK3CB_BAF_9_17Rnd";
_obj addItemToVest "UK3CB_BAF_SmokeShellBlue";
_obj addItemToVest "UK3CB_BAF_SmokeShellRed";
_obj addItemToVest "UK3CB_BAF_SmokeShellGreen";
_obj addItemToVest "UK3CB_BAF_SmokeShell";
for "_i" from 1 to 8 do {_obj addItemToVest "UK3CB_BAF_9_30Rnd";};
_obj addHeadgear "UK3CB_BAF_H_PilotHelmetHeli_A";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";

