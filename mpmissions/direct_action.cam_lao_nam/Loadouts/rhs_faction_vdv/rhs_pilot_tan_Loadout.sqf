
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
_obj addWeapon "rhs_weap_pp2000";
_obj addPrimaryWeaponItem "rhs_mag_9x19mm_7n21_20";
_obj addWeapon "rhs_weap_pya";
_obj addHandgunItem "rhs_mag_9x19_17";

comment "Add containers";
_obj forceAddUniform "rhs_uniform_df15_tan";
_obj addVest "rhs_vest_commander";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "rhs_mag_9x19_17";};
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_9x19mm_7n21_44";};
_obj addItemToVest "SmokeShellRed";
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellBlue";
_obj addHeadgear "rhs_zsh7a_mike_alt";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";

