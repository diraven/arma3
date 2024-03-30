
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
_obj addWeapon "vn_m3a1";
_obj addPrimaryWeaponItem "vn_m3a1_t_mag";
_obj addWeapon "vn_m10";
_obj addHandgunItem "vn_m10_mag";

comment "Add containers";
_obj forceAddUniform "vn_b_uniform_macv_01_01";
_obj addVest "vn_b_vest_usarmy_13";
_obj addBackpack "B_LegStrapBag_black_F";

comment "Add binoculars";
_obj addWeapon "vn_m19_binocs_grn";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToUniform "vn_m67_grenade_mag";
_obj addItemToUniform "uns_m18red";
for "_i" from 1 to 2 do {_obj addItemToUniform "vn_m18_white_mag";};
_obj addItemToUniform "vn_m18_green_mag";
_obj addItemToUniform "vn_m10_mag";
for "_i" from 1 to 5 do {_obj addItemToVest "vn_m3a1_t_mag";};
_obj addItemToBackpack "ToolKit";
_obj addHeadgear "vn_b_helmet_t56_02_01";

comment "Add items";
_obj linkItem "vn_b_item_map";
_obj linkItem "vn_b_item_compass";
_obj linkItem "vn_b_item_watch";
_obj linkItem "vn_b_item_radio_urc10";

