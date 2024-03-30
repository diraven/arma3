
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
_obj addWeapon "hgun_PDW2000_F";
_obj addPrimaryWeaponItem "muzzle_snds_L";
_obj addPrimaryWeaponItem "optic_Holosight_blk_F";
_obj addPrimaryWeaponItem "30Rnd_9x21_Red_Mag";

comment "Add containers";
_obj forceAddUniform "U_I_pilotCoveralls";
_obj addVest "V_LegStrapBag_black_F";
_obj addBackpack "B_Parachute";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_obj addItemToUniform "30Rnd_9x21_Red_Mag";};
_obj addItemToVest "ToolKit";
_obj addHeadgear "H_PilotHelmetFighter_I";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";

