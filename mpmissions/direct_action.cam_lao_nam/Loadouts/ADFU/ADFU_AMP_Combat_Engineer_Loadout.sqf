
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
_obj addWeapon "ADFU_steyr_F88";
_obj addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";
_obj addWeapon "ADFU_hpII";
_obj addHandgunItem "ADFU_13Rnd_45ACP_Mag";

comment "Add containers";
_obj forceAddUniform "ADFU_G3_AMC";
_obj addVest "ADFU_V_TBAS_Light_AMC";
_obj addBackpack "B_LegStrapBag_black_F";

comment "Add binoculars";
_obj addWeapon "rhsusf_bino_m24";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "ADFU_13Rnd_45ACP_Mag";};
_obj addItemToVest "muzzle_snds_M";
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_m67";};
_obj addItemToVest "rhs_mag_m18_red";
_obj addItemToVest "rhs_mag_m18_purple";
_obj addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_grenade_anm8_mag";};
for "_i" from 1 to 5 do {_obj addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
_obj addItemToBackpack "ToolKit";
_obj addHeadgear "rhsusf_ihadss";
_obj addGoggles "rhs_ess_black";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
