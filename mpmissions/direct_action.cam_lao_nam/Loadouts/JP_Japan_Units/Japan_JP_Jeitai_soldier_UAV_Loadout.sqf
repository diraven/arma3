
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
_obj addWeapon "jpa_wepn_Type89_base";
_obj addPrimaryWeaponItem "rhsusf_acc_compm4";
_obj addPrimaryWeaponItem "30Rnd_556x45_Stanag_Tracer_Red";
_obj addWeapon "hgun_jpa_p226_F";
_obj addHandgunItem "acc_jpa_flash_gun";
_obj addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_obj forceAddUniform "Japan_JP_Jeitai_Uniform_base";
_obj addVest "V_Deltaforce_Jeitai";
_obj addBackpack "B_UAV_01_backpack_F";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "16Rnd_9x21_Mag";};
_obj addItemToVest "rhsusf_acc_nt4_black";
for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
_obj addHeadgear "Japan_Jeitai_Mich";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "B_UavTerminal";
_obj linkItem "Jp_Goggles_NV";
