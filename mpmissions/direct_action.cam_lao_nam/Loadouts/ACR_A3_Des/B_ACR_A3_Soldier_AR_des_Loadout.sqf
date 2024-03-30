
_obj = param [0];

if (!local _obj) exitWith {};

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add weapons";
this addWeapon "rhs_weap_minimi_para_railed";
this addPrimaryWeaponItem "rhsusf_acc_compm4";
this addPrimaryWeaponItem "rhsusf_200Rnd_556x45_box";
this addPrimaryWeaponItem "rhsusf_acc_saw_bipod";
this addWeapon "ACR_A3_hgun_Duty";
this addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
this forceAddUniform "U_ACR_A3_CombatUniform_Des";
this addVest "V_ACR_A3_NPP2006_nk_des";
this addBackpack "B_AssaultPack_cbr";

comment "Add binoculars";
this addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {this addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {this addItemToUniform "16Rnd_9x21_Mag";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {this addItemToVest "HandGrenade";};
this addItemToVest "SmokeShellGreen";
this addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_200Rnd_556x45_box";};
this addItemToBackpack "rhsusf_200Rnd_556x45_box";
this addHeadgear "H_ACR_A3_HelmetIA_Headset_vz95_des";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_14";
