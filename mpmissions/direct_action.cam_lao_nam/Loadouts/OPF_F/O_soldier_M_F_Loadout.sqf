
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
_obj addWeapon "srifle_DMR_01_F";
_obj addPrimaryWeaponItem "acc_pointer_IR";
_obj addPrimaryWeaponItem "optic_DMS";
_obj addPrimaryWeaponItem "10Rnd_762x54_Mag";
_obj addPrimaryWeaponItem "bipod_02_F_hex";
_obj addWeapon "hgun_Rook40_F";
_obj addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_obj forceAddUniform "U_O_CombatUniform_ocamo";
_obj addVest "V_HarnessO_brn";
_obj addBackpack "B_FieldPack_ocamo";

comment "Add binoculars";
_obj addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "16Rnd_9x21_Mag";};
_obj addItemToVest "muzzle_snds_B_arid_F";
for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
_obj addItemToVest "SmokeShell";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 10 do {_obj addItemToVest "10Rnd_762x54_Mag";};
_obj addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_obj addItemToBackpack "SatchelCharge_Remote_Mag";};
_obj addHeadgear "H_HelmetO_ocamo";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "NVGoggles_OPFOR";
