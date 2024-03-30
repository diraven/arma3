
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
_obj addWeapon "arifle_SPAR_02_blk_F";
_obj addPrimaryWeaponItem "muzzle_snds_M";
_obj addPrimaryWeaponItem "acc_flashlight";
_obj addPrimaryWeaponItem "optic_ERCO_blk_F";
_obj addPrimaryWeaponItem "150Rnd_556x45_Drum_Mag_F";
_obj addPrimaryWeaponItem "bipod_01_F_blk";
_obj addWeapon "hgun_P07_blk_F";
_obj addHandgunItem "muzzle_snds_L";
_obj addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_obj forceAddUniform "U_B_CTRG_Soldier_F";
_obj addVest "V_PlateCarrierL_CTRG";
_obj addBackpack "B_AssaultPack_rgr";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "16Rnd_9x21_Mag";};
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
_obj addItemToVest "SmokeShellRed";
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellBlue";
for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {_obj addItemToVest "150Rnd_556x45_Drum_Mag_Tracer_F";};
for "_i" from 1 to 3 do {_obj addItemToBackpack "150Rnd_556x45_Drum_Mag_Tracer_F";};
_obj addHeadgear "H_HelmetB_TI_tna_F";
_obj addGoggles "G_Balaclava_TI_G_tna_F";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "NVGoggles_OPFOR";