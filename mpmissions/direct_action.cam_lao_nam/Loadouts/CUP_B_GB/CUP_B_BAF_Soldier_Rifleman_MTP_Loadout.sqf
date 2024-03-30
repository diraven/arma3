
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
_obj addWeapon "CUP_arifle_L85A2_G";
_obj addPrimaryWeaponItem "CUP_acc_LLM_black";
_obj addPrimaryWeaponItem "CUP_optic_Elcan_reflex";
_obj addPrimaryWeaponItem "30Rnd_556x45_Stanag_Tracer_Red";
_obj addWeapon "CUP_hgun_Glock17_blk";
_obj addHandgunItem "CUP_17Rnd_9x19_glock17";

comment "Add containers";
_obj forceAddUniform "CUP_U_B_BAF_MTP_UBACSLONG_Gloves";
_obj addVest "CUP_V_B_BAF_MTP_Osprey_Mk4_Rifleman";
_obj addBackpack "B_UAV_01_backpack_F";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "CUP_17Rnd_9x19_glock17";};
_obj addItemToVest "CUP_muzzle_snds_L85";
for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
_obj addItemToVest "SmokeShellRed";
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellBlue";
for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
_obj addHeadgear "CUP_H_BAF_MTP_Mk7";
_obj addGoggles "CUP_G_Oakleys_Drk";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "B_UavTerminal";
_obj linkItem "CUP_NVG_HMNVS";
