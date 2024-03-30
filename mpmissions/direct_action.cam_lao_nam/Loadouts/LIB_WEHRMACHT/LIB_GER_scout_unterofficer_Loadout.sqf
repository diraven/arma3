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
_obj addWeapon "LIB_MP44_GW";
_obj addPrimaryWeaponItem "LIB_ACC_GW_SB_Empty";
_obj addPrimaryWeaponItem "LIB_30Rnd_792x33";
_obj addWeapon "LIB_P38";
_obj addHandgunItem "LIB_8Rnd_9x19";

comment "Add containers";
_obj forceAddUniform "fow_u_ger_pzlehr_01_shutz";
_obj addVest "fow_v_heer_mp44";
_obj addBackpack "csa38_GEBatoh9";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_GER";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToUniform "fow_e_m24";
_obj addItemToUniform "fow_e_nb39b";
for "_i" from 1 to 3 do {_obj addItemToUniform "LIB_8Rnd_9x19";};
for "_i" from 1 to 6 do {_obj addItemToVest "LIB_30Rnd_792x33";};
_obj addItemToBackpack "LIB_US_TNT_4pound_mag";
for "_i" from 1 to 4 do {_obj addItemToBackpack "LIB_1Rnd_G_PZGR_40";};
_obj addHeadgear "fow_h_ger_m40_heer_camo";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "LIB_GER_ItemCompass_deg";
_obj linkItem "LIB_GER_ItemWatch";
_obj linkItem "ItemRadio";




