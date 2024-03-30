
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
_obj addWeapon "UK3CB_BAF_L85A2";
_obj addPrimaryWeaponItem "UK3CB_BAF_SFFH";
_obj addPrimaryWeaponItem "UK3CB_BAF_SUSAT";
_obj addPrimaryWeaponItem "UK3CB_BAF_556_30Rnd_T";
_obj addWeapon "UK3CB_BAF_L9A1";
_obj addHandgunItem "UK3CB_BAF_9_13Rnd";

comment "Add containers";
_obj forceAddUniform "UK3CB_BAF_U_CombatUniform_DPMW_RM";
_obj addVest "UK3CB_BAF_V_Osprey_DPMW8";
_obj addBackpack "UK3CB_BAF_B_Bergen_OLI_JTAC_A";

comment "Add binoculars";
_obj addMagazine "Laserbatteries";
_obj addWeapon "UK3CB_BAF_Soflam_Laserdesignator";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "UK3CB_BAF_9_13Rnd";};
for "_i" from 1 to 8 do {_obj addItemToVest "UK3CB_BAF_556_30Rnd_T";};
for "_i" from 1 to 2 do {_obj addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_obj addItemToVest "UK3CB_BAF_SmokeShell";};
_obj addItemToVest "UK3CB_BAF_SmokeShellRed";
_obj addItemToVest "UK3CB_BAF_SmokeShellBlue";
_obj addItemToVest "UK3CB_BAF_SmokeShellGreen";
_obj addItemToVest "Laserbatteries";
_obj addItemToBackpack "SatchelCharge_Remote_Mag";
_obj addHeadgear "UK3CB_BAF_H_Boonie_DPMW_PRR";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "UK3CB_BAF_HMNVS";


