
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
_obj addWeapon "LMG_Mk200_F";
_obj addPrimaryWeaponItem "acc_pointer_IR";
_obj addPrimaryWeaponItem "optic_ACO_grn";
_obj addPrimaryWeaponItem "200Rnd_65x39_cased_Box";
_obj addPrimaryWeaponItem "bipod_03_F_blk";
_obj addWeapon "hgun_ACPC2_F";
_obj addHandgunItem "9Rnd_45ACP_Mag";

comment "Add containers";
_obj forceAddUniform "U_I_CombatUniform_shortsleeve";
_obj addVest "V_PlateCarrierIA2_dgtl";
_obj addBackpack "B_AssaultPack_dgtl";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "9Rnd_45ACP_Mag";};
_obj addItemToVest "muzzle_snds_H";
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_obj addItemToVest "MiniGrenade";};
_obj addItemToVest "200Rnd_65x39_cased_Box";
for "_i" from 1 to 3 do {_obj addItemToBackpack "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToBackpack "200Rnd_65x39_cased_Box";};
_obj addHeadgear "H_HelmetIA_camo";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "NVGoggles_INDEP";

