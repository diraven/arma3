
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
_obj addWeapon "rhs_weap_ak74n_gp25";
_obj addPrimaryWeaponItem "rhs_acc_dtk";
_obj addPrimaryWeaponItem "rhs_acc_ekp8_02";
_obj addPrimaryWeaponItem "rhs_30Rnd_545x39_7N6M_AK";
_obj addWeapon "rhsusf_weap_glock17g4";
_obj addHandgunItem "rhsusf_mag_17Rnd_9x19_JHP";

comment "Add containers";
_obj forceAddUniform "rhsgref_uniform_para_ttsko_urban";
_obj addVest "rhsgref_6b23_khaki_rifleman";
_obj addBackpack "rhs_rk_sht_30_olive";

comment "Add binoculars";
_obj addWeapon "rhsusf_bino_m24";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "rhsusf_mag_17Rnd_9x19_JHP";};
_obj addItemToVest "rhs_acc_tgpa";
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_rgo";};
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_rdg2_white";};
for "_i" from 1 to 6 do {_obj addItemToVest "rhs_30Rnd_545x39_7N6M_AK";};
for "_i" from 1 to 10 do {_obj addItemToBackpack "rhs_VOG25";};
_obj addItemToBackpack "SatchelCharge_Remote_Mag";
_obj addHeadgear "rhsgref_6b27m_ttsko_digi";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "rhs_1PN138";

