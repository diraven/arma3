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
_obj addWeapon "BWA3_MG4";
_obj addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
_obj addPrimaryWeaponItem "BWA3_optic_ZO4x30";
_obj addPrimaryWeaponItem "BWA3_200Rnd_556x45";
_obj addWeapon "BWA3_P8";
_obj addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
_obj forceAddUniform "BWA3_Uniform_Fleck";
_obj addVest "BWA3_Vest_MachineGunner_Fleck";
_obj addBackpack "BWA3_AssaultPack_Fleck";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "BWA3_15Rnd_9x19_P8";};
_obj addItemToVest "BWA3_muzzle_snds_Rotex_IIIC";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
_obj addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_obj addItemToVest "BWA3_200Rnd_556x45";};
_obj addItemToBackpack "BWA3_200Rnd_556x45";
_obj addHeadgear "BWA3_OpsCore_Fleck";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "NVGoggles_OPFOR";
