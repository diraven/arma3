
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
_obj addWeapon "arifle_Mk20_F";
_obj addPrimaryWeaponItem "acc_pointer_IR";
_obj addPrimaryWeaponItem "optic_ACO_grn";
_obj addPrimaryWeaponItem "30Rnd_556x45_Stanag_Tracer_Red";
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
_obj addItemToVest "muzzle_snds_M";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
_obj addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_obj addItemToVest "MiniGrenade";};
for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
_obj addItemToBackpack "Medikit";
for "_i" from 1 to 10 do {_obj addItemToBackpack "FirstAidKit";};
_obj addHeadgear "H_HelmetIA";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "NVGoggles_INDEP";

