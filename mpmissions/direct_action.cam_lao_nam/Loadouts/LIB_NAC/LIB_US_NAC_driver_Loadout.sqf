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
_obj addWeapon "LIB_M3_GreaseGun";
_obj addPrimaryWeaponItem "LIB_30Rnd_M3_GreaseGun_45ACP";
_obj addWeapon "LIB_Colt_M1911";
_obj addHandgunItem "LIB_7Rnd_45ACP";

comment "Add containers";
_obj forceAddUniform "fow_u_us_pilot_01";
_obj addVest "fow_v_us_thompson";
_obj addBackpack "fow_b_us_m1944";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_US";

comment "Add items to containers";
for "_i" from 1 to 2 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToUniform "LIB_7Rnd_45ACP";
_obj addItemToVest "fow_e_no77";
for "_i" from 1 to 4 do {_obj addItemToVest "LIB_30Rnd_M3_GreaseGun_45ACP";};
_obj addItemToBackpack "LIB_ToolKit";
_obj addHeadgear "H_LIB_US_Helmet_Tank";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";

