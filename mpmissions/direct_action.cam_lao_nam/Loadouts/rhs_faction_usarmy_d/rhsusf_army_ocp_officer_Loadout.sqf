
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
_obj forceAddUniform "rhs_uniform_acu_oefcp";

comment "Add binoculars";
_obj addWeapon "rhsusf_bino_m24";

comment "Add items to containers";
_obj addItemToUniform "FirstAidKit";
_obj addItemToUniform "rhsusf_ANPVS_14";
_obj addItemToUniform "rhsusf_patrolcap_ocp";
_obj addHeadgear "rhsusf_patrolcap_ocp";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";


	