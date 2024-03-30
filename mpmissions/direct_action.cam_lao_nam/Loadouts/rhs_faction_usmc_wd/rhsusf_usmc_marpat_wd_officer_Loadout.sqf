
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
_obj forceAddUniform "rhs_uniform_FROG01_wd";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
_obj addItemToUniform "FirstAidKit";
_obj addItemToUniform "rhsusf_ANPVS_14";
_obj addHeadgear "rhs_8point_marpatwd";
_obj addGoggles "rhs_googles_clear";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";


	