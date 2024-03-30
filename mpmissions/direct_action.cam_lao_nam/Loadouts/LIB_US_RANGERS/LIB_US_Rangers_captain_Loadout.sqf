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
_obj forceAddUniform "U_LIB_US_Rangers_Uniform";
_obj addVest "V_LIB_US_Vest_45";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_US";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_mk2";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_no77";};
_obj addHeadgear "H_LIB_US_Rangers_Helmet_Cap";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";