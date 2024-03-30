
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
_obj addWeapon "rhs_weap_ak105";
_obj addPrimaryWeaponItem "rhs_acc_dtk";
_obj addPrimaryWeaponItem "rhs_30Rnd_545x39_7N10_AK";
_obj addWeapon "rhs_weap_pya";
_obj addHandgunItem "rhs_mag_9x19_17";

comment "Add containers";
_obj forceAddUniform "rhs_uniform_afghanka_vsr_2";
_obj addVest "rhs_6b3";
_obj addBackpack "B_LegStrapBag_black_F";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "rhs_mag_9x19_17";};
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_rdg2_white";};
for "_i" from 1 to 6 do {_obj addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
_obj addItemToBackpack "ToolKit";
_obj addHeadgear "rhs_tsh4";
_obj addGoggles "rhsusf_oakley_goggles_blk";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
