
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
_obj addWeapon "srifle_EBR_blk_lxWS";
_obj addPrimaryWeaponItem "acc_pointer_IR";
_obj addPrimaryWeaponItem "optic_SOS";
_obj addPrimaryWeaponItem "20Rnd_762x51_Mag_blk_lxWS";
_obj addPrimaryWeaponItem "bipod_03_F_blk";
_obj addWeapon "hgun_ACPC2_F";
_obj addHandgunItem "9Rnd_45ACP_Mag";

comment "Add containers";
_obj forceAddUniform "U_I_CombatUniform";
_obj addVest "V_PlateCarrierIA1_dgtl";
_obj addBackpack "B_AssaultPack_dgtl";

comment "Add binoculars";
_obj addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "9Rnd_45ACP_Mag";};
_obj addItemToVest "muzzle_snds_B";
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
_obj addItemToVest "SmokeShellGreen";
for "_i" from 1 to 7 do {_obj addItemToVest "20Rnd_762x51_Mag_blk_lxWS";};
_obj addItemToVest "SmokeShellRed";
_obj addItemToVest "MiniGrenade";
for "_i" from 1 to 3 do {_obj addItemToBackpack "FirstAidKit";};
_obj addItemToBackpack "SatchelCharge_Remote_Mag";
_obj addHeadgear "H_Booniehat_dgtl";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "NVGoggles_INDEP";


