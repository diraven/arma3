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
_obj forceAddUniform "U_LIB_SOV_Kapitan_summer";
_obj addVest "V_LIB_SOV_RA_TankOfficerSet";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_SU";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToVest "LIB_ACC_M1891_Bayo";
_obj addItemToVest "LIB_Rg42";
_obj addItemToVest "fow_e_no77";
_obj addHeadgear "H_LIB_SOV_RA_OfficerCap";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
