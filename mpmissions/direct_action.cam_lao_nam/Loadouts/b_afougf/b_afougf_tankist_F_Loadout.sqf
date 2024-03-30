
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
_obj addWeapon "rhs_weap_aks74un";
_obj addPrimaryWeaponItem "rhs_acc_pgs64_74u";
_obj addPrimaryWeaponItem "rhs_30Rnd_545x39_7N6M_AK";
_obj addWeapon "rhs_weap_makarov_pm";
_obj addHandgunItem "rhs_mag_9x18_8_57N181S";

comment "Add containers";
_obj forceAddUniform "U_B_afou_tankist_B";
_obj addVest "vest_mbav_ngu_light";
_obj addBackpack "bp_ngu_eagle_green";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "rhs_mag_9x18_8_57N181S";};
for "_i" from 1 to 6 do {_obj addItemToVest "rhs_30Rnd_545x39_7N6M_AK";};
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_rdg2_white";};
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_rgd5";};
_obj addItemToBackpack "ToolKit";
_obj addHeadgear "rhs_tsh4";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "rhs_1PN138";

