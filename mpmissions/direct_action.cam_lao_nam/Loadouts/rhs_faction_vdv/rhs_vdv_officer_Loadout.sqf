
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
_obj forceAddUniform "rhs_uniform_vkpo";
_obj addVest "rhs_vest_pistol_holster";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
_obj addItemToUniform "FirstAidKit";
_obj addItemToUniform "rhs_1PN138";
_obj addItemToVest "rhs_mag_rdg2_white";
_obj addHeadgear "rhs_beret_vdv1";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
