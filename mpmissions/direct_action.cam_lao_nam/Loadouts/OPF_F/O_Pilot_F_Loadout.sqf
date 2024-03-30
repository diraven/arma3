
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
_obj addWeapon "SMG_02_F";
_obj addPrimaryWeaponItem "optic_ACO_grn_smg";
_obj addPrimaryWeaponItem "30Rnd_9x21_Mag_SMG_02";

comment "Add containers";
_obj forceAddUniform "U_O_PilotCoveralls";
_obj addBackpack "B_LegStrapBag_black_F";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_obj addItemToUniform "30Rnd_9x21_Mag_SMG_02";};
_obj addItemToUniform "SmokeShell";
_obj addItemToBackpack "ToolKit";
_obj addHeadgear "H_PilotHelmetFighter_O";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
