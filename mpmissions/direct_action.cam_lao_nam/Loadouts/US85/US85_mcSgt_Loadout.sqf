
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
_obj addWeapon "UK3CB_M16A2_UGL";
_obj addPrimaryWeaponItem "rhsusf_acc_ACOG";
_obj addPrimaryWeaponItem "30Rnd_556x45_Stanag_red";
_obj addWeapon "rhsusf_weap_m1911a1";
_obj addHandgunItem "rhsusf_mag_7x45acp_MHP";

comment "Add containers";
_obj forceAddUniform "US85_uniBDU";
_obj addVest "US85_grV_M16";
_obj addBackpack "US85_bpAlice";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "rhsusf_mag_7x45acp_MHP";};
for "_i" from 1 to 2 do {_obj addItemToUniform "Chemlight_green";};
for "_i" from 1 to 8 do {_obj addItemToVest "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 10 do {_obj addItemToVest "30Rnd_556x45_Stanag_red";};
for "_i" from 1 to 3 do {_obj addItemToVest "1Rnd_Smoke_Grenade_shell";};
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellRed";
for "_i" from 1 to 3 do {_obj addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_obj addItemToVest "rhs_mag_m67";};
_obj addItemToBackpack "SatchelCharge_Remote_Mag";
_obj addHeadgear "US85_helmetPASGT";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "US85_ANPVS5_Goggles";

