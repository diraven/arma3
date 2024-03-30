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
_obj forceAddUniform "U_LIB_GER_Hauptmann";
_obj addVest "V_LIB_GER_OfficerVest";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_GER";

comment "Add items to containers";
_obj addItemToUniform "FirstAidKit";
_obj addHeadgear "H_LIB_GER_OfficerCap";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "LIB_GER_ItemCompass_deg";
_obj linkItem "LIB_GER_ItemWatch";
_obj linkItem "ItemRadio";