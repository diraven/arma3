
_obj = param [0];

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
_obj addWeapon "rhs_weap_aks74n_gp25";
_obj addPrimaryWeaponItem "rhs_acc_dtk1983";
_obj addPrimaryWeaponItem "rhs_acc_pkas";
_obj addPrimaryWeaponItem "rhs_30Rnd_545x39_7N6M_AK";
_obj addWeapon "rhs_weap_makarov_pm";
_obj addHandgunItem "rhs_mag_9x18_8_57N181S";

comment "Add containers";
_obj forceAddUniform "U_B_afou_ubacs_mm14";
_obj addVest "rhsusf_mbav_rifleman";
_obj addBackpack "B_Kitbag_cbr";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_obj addItemToUniform "rhs_mag_9x18_8_57N181S";};
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_rgd5";};
_obj addItemToVest "rhs_mag_nspn_green";
_obj addItemToVest "rhs_mag_nspn_red";
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_rdg2_white";};
_obj addItemToVest "rhs_mag_nspn_yellow";
for "_i" from 1 to 8 do {_obj addItemToVest "rhs_30Rnd_545x39_7N6M_AK";};
for "_i" from 1 to 10 do {_obj addItemToBackpack "rhs_VOG25";};
_obj addItemToBackpack "SatchelCharge_Remote_Mag";
_obj addHeadgear "h_afou_ach_mm14_01";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "rhs_1PN138";
