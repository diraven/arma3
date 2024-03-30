
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
_obj addWeapon "rhs_weap_svds";
_obj addPrimaryWeaponItem "rhs_acc_pso1m21_svd";
_obj addPrimaryWeaponItem "rhs_10Rnd_762x54mmR_7N1";
_obj addWeapon "rhs_weap_pya";
_obj addHandgunItem "rhs_mag_9x19_17";

comment "Add containers";
_obj forceAddUniform "rhs_uniform_afghanka_vsr_2";
_obj addVest "rhs_6b3_AK";
_obj addBackpack "rhs_rk_sht_30_olive";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "rhs_mag_9x19_17";};
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_rgo";};
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_rdg2_white";};
_obj addItemToVest "rhs_mag_m18_green";
_obj addItemToVest "rhs_mag_m18_purple";
_obj addItemToVest "rhs_mag_m18_red";
for "_i" from 1 to 9 do {_obj addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
_obj addItemToBackpack "rhs_acc_tgpv2";
_obj addItemToBackpack "rhs_1PN138";
_obj addItemToBackpack "SatchelCharge_Remote_Mag";
_obj addHeadgear "rhs_fieldcap_vsr";
_obj addGoggles "G_Bandanna_khk";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";

