
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
_obj addWeapon "arifle_MSBS65_black_F";
_obj addPrimaryWeaponItem "acc_flashlight";
_obj addPrimaryWeaponItem "optic_ico_01_black_f";
_obj addPrimaryWeaponItem "30Rnd_65x39_caseless_msbs_mag";
_obj addWeapon "launch_I_Titan_eaf_F";
_obj addSecondaryWeaponItem "Titan_AA";
_obj addWeapon "hgun_Pistol_heavy_01_green_F";
_obj addHandgunItem "11Rnd_45ACP_Mag";

comment "Add containers";
_obj forceAddUniform "U_I_E_Uniform_01_F";
_obj addVest "V_CarrierRigKBT_01_light_EAF_F";
_obj addBackpack "B_Carryall_eaf_F";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "11Rnd_45ACP_Mag";};
_obj addItemToVest "muzzle_snds_65_TI_blk_F";
for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_obj addItemToVest "SmokeShell";};
_obj addItemToVest "SmokeShellBlue";
for "_i" from 1 to 8 do {_obj addItemToVest "30Rnd_65x39_caseless_msbs_mag_Tracer";};
_obj addItemToVest "SmokeShellRed";
_obj addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_obj addItemToBackpack "Titan_AA";};
_obj addHeadgear "H_HelmetHBK_ear_F";
_obj addGoggles "G_Tactical_Black";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "NVGoggles_INDEP";
