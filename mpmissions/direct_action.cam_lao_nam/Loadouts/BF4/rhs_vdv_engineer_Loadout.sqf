
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
_obj addWeapon "arifle_AK12U_lush_F";
_obj addPrimaryWeaponItem "rhs_acc_2dpZenit_ris";
_obj addPrimaryWeaponItem "rhs_acc_ekp8_18";
_obj addPrimaryWeaponItem "30Rnd_762x39_AK12_Mag_Tracer_F";
_obj addWeapon "rhs_weap_rpg7";
_obj addSecondaryWeaponItem "rhs_acc_pgo7v3";
_obj addSecondaryWeaponItem "rhs_rpg7_PG7VL_mag";
_obj addWeapon "rhs_weap_pya";
_obj addHandgunItem "rhs_mag_9x19_17";

comment "Add containers";
_obj forceAddUniform "rhs_uniform_afghanka_vsr_2";
_obj addVest "rhs_6b3_AK_2";
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
for "_i" from 1 to 5 do {_obj addItemToVest "30Rnd_762x39_AK12_Mag_Tracer_F";};
_obj addItemToBackpack "muzzle_snds_B";
_obj addItemToBackpack "ToolKit";
_obj addItemToBackpack "MineDetector";
_obj addItemToBackpack "rhs_1PN138";
for "_i" from 1 to 3 do {_obj addItemToBackpack "rhs_rpg7_PG7VL_mag";};
_obj addHeadgear "rhs_fieldcap_vsr";
_obj addGoggles "rhs_facewear_6m2_1";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";

