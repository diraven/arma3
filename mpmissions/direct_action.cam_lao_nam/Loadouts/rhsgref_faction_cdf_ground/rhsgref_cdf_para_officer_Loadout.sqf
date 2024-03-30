
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

comment "Add containers";
_obj forceAddUniform "rhsgref_uniform_para_ttsko_urban";
_obj addVest "rhsgref_6b23_khaki_officer";

comment "Add binoculars";
_obj addWeapon "rhsusf_bino_m24";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToVest "rhs_acc_tgpa";
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_rgo";};
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_rdg2_white";};
_obj addHeadgear "rhsgref_fieldcap_ttsko_urban";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";

