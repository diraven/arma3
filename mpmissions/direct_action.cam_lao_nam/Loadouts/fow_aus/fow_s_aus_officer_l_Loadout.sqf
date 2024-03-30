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
_obj forceAddUniform "fow_u_aus_m37_03_private";
_obj addVest "fow_v_uk_officer";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_UK";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addHeadgear "fow_h_uk_jungle_hat_01";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";

comment "Set identity";
[_obj,"Default","male12eng"] call BIS_fnc_setIdentity;
