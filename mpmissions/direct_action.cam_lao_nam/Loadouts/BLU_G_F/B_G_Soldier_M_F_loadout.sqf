
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
_obj addWeapon "srifle_DMR_06_hunter_F";
_obj addPrimaryWeaponItem "optic_KHS_old";
_obj addPrimaryWeaponItem "10Rnd_Mk14_762x51_Mag";
_obj addPrimaryWeaponItem "bipod_01_F_blk";
_obj addWeapon "hgun_ACPC2_F";
_obj addHandgunItem "9Rnd_45ACP_Mag";

comment "Add containers";
_obj forceAddUniform "U_IG_Guerilla3_1";
_obj addVest "V_BandollierB_oli";
_obj addBackpack "B_AssaultPack_rgr";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_obj addItemToUniform "9Rnd_45ACP_Mag";};
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
_obj addItemToVest "SmokeShellRed";
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellBlue";
for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
for "_i" from 1 to 6 do {_obj addItemToVest "10Rnd_Mk14_762x51_Mag";};
_obj addItemToBackpack "SatchelCharge_Remote_Mag";
for "_i" from 1 to 6 do {_obj addItemToBackpack "10Rnd_Mk14_762x51_Mag";};
_obj addHeadgear "H_Booniehat_khk_hs";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";

