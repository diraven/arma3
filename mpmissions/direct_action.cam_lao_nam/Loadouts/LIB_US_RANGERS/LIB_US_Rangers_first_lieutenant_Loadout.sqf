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
_obj addWeapon "LIB_M1A1_Thompson";
_obj addPrimaryWeaponItem "LIB_30Rnd_45ACP";
_obj addWeapon "LIB_Colt_M1911";
_obj addHandgunItem "LIB_7Rnd_45ACP";

comment "Add containers";
_obj forceAddUniform "U_LIB_US_Rangers_Uniform";
_obj addVest "V_LIB_US_Vest_Thompson_nco";
_obj addBackpack "fow_b_us_m1928";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_US";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "LIB_7Rnd_45ACP";};
_obj addItemToVest "fow_e_mk2";
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_no77";};
for "_i" from 1 to 5 do {_obj addItemToVest "LIB_30Rnd_45ACP";};
_obj addItemToBackpack "LIB_US_TNT_4pound_mag";
_obj addHeadgear "H_LIB_US_Rangers_Helmet_NCO";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";