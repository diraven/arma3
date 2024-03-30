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
_obj addWeapon "LIB_FG42G";
_obj addPrimaryWeaponItem "LIB_Optic_Zf4";
_obj addPrimaryWeaponItem "LIB_20Rnd_792x57";
_obj addWeapon "LIB_P38";
_obj addHandgunItem "LIB_8Rnd_9x19";

comment "Add containers";
_obj forceAddUniform "fow_u_ger_fall_03_private";
_obj addVest "fow_v_heer_mp44";
_obj addBackpack "csa38_GEBatoh9";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_GER";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "LIB_8Rnd_9x19";};
_obj addItemToUniform "fow_e_m24";
_obj addItemToUniform "fow_e_nb39b";
for "_i" from 1 to 9 do {_obj addItemToVest "LIB_20Rnd_792x57";};
_obj addItemToBackpack "LIB_US_TNT_4pound_mag";
_obj addHeadgear "fow_h_ger_m40_fall_01";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "LIB_GER_ItemCompass_deg";
_obj linkItem "LIB_GER_ItemWatch";
_obj linkItem "ItemRadio";


