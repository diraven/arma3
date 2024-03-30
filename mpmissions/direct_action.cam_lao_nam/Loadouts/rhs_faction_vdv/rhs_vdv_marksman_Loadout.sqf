
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
_obj addWeapon "rhs_weap_svds";
_obj addPrimaryWeaponItem "rhs_10Rnd_762x54mmR_7N1";
_obj addWeapon "rhs_weap_pya";
_obj addHandgunItem "rhs_mag_9x19_17";

comment "Add containers";
_obj forceAddUniform "rhs_uniform_vkpo_gloves";
_obj addVest "rhs_6b45_rifleman";

comment "Add binoculars";
_obj addWeapon "rhs_pdu4";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "rhs_mag_9x19_17";};
_obj addItemToVest "rhs_acc_tgpv2";
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_rdg2_white";};
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_rgo";};
_obj addItemToVest "SmokeShellBlue";
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 13 do {_obj addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
_obj addHeadgear "rhs_6b47_emr_1";
_obj addGoggles "rhs_facewear_6m2_1";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "rhs_1PN138";
