
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
_obj addWeapon "hgun_Pistol_heavy_01_green_F";
_obj addHandgunItem "11Rnd_45ACP_Mag";

comment "Add containers";
_obj forceAddUniform "U_I_E_Uniform_01_shortsleeve_F";
_obj addVest "V_CarrierRigKBT_01_EAF_F";
_obj addBackpack "B_LegStrapBag_black_F";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "11Rnd_45ACP_Mag";};
_obj addItemToVest "SmokeShell";
for "_i" from 1 to 4 do {_obj addItemToVest "30Rnd_65x39_caseless_msbs_mag";};
_obj addItemToVest "SmokeShellRed";
_obj addItemToVest "SmokeShellGreen";
_obj addItemToVest "SmokeShellBlue";
_obj addItemToBackpack "ToolKit";
_obj addHeadgear "H_Tank_eaf_F";
_obj addGoggles "G_Shades_Red";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "NVGoggles_OPFOR";
