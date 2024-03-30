
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
_obj forceAddUniform "rhs_uniform_g3_mc";
_obj addVest "rhsusf_mbav";

comment "Add items to containers";
for "_i" from 1 to 2 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToVest "rhs_mag_m18_green";
_obj addHeadgear "rhsusf_patrolcap_ocp";
_obj addGoggles "rhs_googles_black";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";

