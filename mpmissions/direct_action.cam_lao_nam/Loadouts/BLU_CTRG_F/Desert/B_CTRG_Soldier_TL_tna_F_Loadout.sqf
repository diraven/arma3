
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
_obj addWeapon "arifle_SPAR_01_GL_blk_F";
_obj addPrimaryWeaponItem "muzzle_snds_M";
_obj addPrimaryWeaponItem "acc_flashlight";
_obj addPrimaryWeaponItem "optic_ERCO_blk_F";
_obj addPrimaryWeaponItem "30Rnd_556x45_Stanag_Tracer_Red";
_obj addWeapon "hgun_P07_blk_F";
_obj addHandgunItem "muzzle_snds_L";
_obj addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_obj forceAddUniform "U_B_CTRG_Soldier_Arid_F";
_obj addVest "V_TacVest_oli";
_obj addBackpack "B_Kitbag_rgr";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "16Rnd_9x21_Mag";};
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
_obj addItemToVest "SmokeShellRed";
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellBlue";
for "_i" from 1 to 5 do {_obj addItemToVest "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 7 do {_obj addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {_obj addItemToBackpack "SatchelCharge_Remote_Mag";};
_obj addHeadgear "H_HelmetB_TI_arid_F";
_obj addGoggles "G_Balaclava_TI_G_blk_F";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "NVGoggles_OPFOR";
