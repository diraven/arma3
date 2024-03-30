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
_obj addWeapon "BWA3_G36A3";
_obj addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
_obj addPrimaryWeaponItem "BWA3_optic_ZO4x30_RSAS";
_obj addPrimaryWeaponItem "BWA3_30Rnd_556x45_G36";
_obj addWeapon "BWA3_Fliegerfaust";
_obj addSecondaryWeaponItem "BWA3_Fliegerfaust_Mag";
_obj addWeapon "BWA3_P8";
_obj addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
_obj forceAddUniform "BWA3_Uniform_Tropen";
_obj addVest "BWA3_Vest_Rifleman_Tropen";
_obj addBackpack "BWA3_Carryall_Tropen";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "BWA3_15Rnd_9x19_P8";};
_obj addItemToVest "BWA3_muzzle_snds_Rotex_IIIC";
for "_i" from 1 to 8 do {_obj addItemToVest "BWA3_30Rnd_556x45_G36";};
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
_obj addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
_obj addItemToBackpack "BWA3_optic_NSA80";
for "_i" from 1 to 3 do {_obj addItemToBackpack "BWA3_Fliegerfaust_Mag";};
_obj addHeadgear "BWA3_OpsCore_Tropen";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "NVGoggles_OPFOR";
