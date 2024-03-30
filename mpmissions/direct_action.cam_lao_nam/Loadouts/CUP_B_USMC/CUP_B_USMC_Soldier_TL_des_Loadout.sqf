
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
_obj addWeapon "CUP_arifle_M4A1_BUIS_GL";
_obj addPrimaryWeaponItem "CUP_acc_ANPEQ_2_Black_Top";
_obj addPrimaryWeaponItem "CUP_optic_ACOG";
_obj addPrimaryWeaponItem "CUP_30Rnd_556x45_Stanag";
_obj addWeapon "CUP_hgun_M9A1";
_obj addHandgunItem "CUP_15Rnd_9x19_M9";

comment "Add containers";
_obj forceAddUniform "CUP_U_B_USMC_FROG2_DMARPAT";
_obj addVest "CUP_V_B_Eagle_SPC_GL";
_obj addBackpack "B_Kitbag_cbr";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "CUP_15Rnd_9x19_M9";};
for "_i" from 1 to 2 do {_obj addItemToVest "CUP_HandGrenade_M67";};
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 8 do {_obj addItemToVest "CUP_30Rnd_556x45_Stanag";};
for "_i" from 1 to 8 do {_obj addItemToVest "CUP_1Rnd_HE_M203";};
_obj addItemToBackpack "SatchelCharge_Remote_Mag";
_obj addHeadgear "CUP_H_LWHv2_MARPAT_des";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "CUP_NVG_PVS14";