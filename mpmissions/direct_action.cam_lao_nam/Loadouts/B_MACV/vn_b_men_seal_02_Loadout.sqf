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
_obj addWeapon "vn_xm177";
_obj addPrimaryWeaponItem "vn_m16_20_t_mag";
_obj addWeapon "vn_mx991_m1911";
_obj addHandgunItem "vn_m1911_mag";

comment "Add containers";
_obj forceAddUniform "vn_b_uniform_seal_02_02";
_obj addVest "vn_b_vest_seal_06";
_obj addBackpack "vn_b_pack_lw_07";

comment "Add binoculars";
_obj addWeapon "vn_m19_binocs_grn";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToUniform "vn_m18_red_mag";
_obj addItemToUniform "vn_m18_green_mag";
for "_i" from 1 to 2 do {_obj addItemToUniform "vn_m18_white_mag";};
for "_i" from 1 to 2 do {_obj addItemToVest "vn_m1911_mag";};
for "_i" from 1 to 2 do {_obj addItemToVest "vn_m67_grenade_mag";};
for "_i" from 1 to 14 do {_obj addItemToVest "vn_m16_20_t_mag";};
_obj addItemToBackpack "Medikit";
for "_i" from 1 to 10 do {_obj addItemToBackpack "FirstAidKit";};
_obj addHeadgear "vn_b_boonie_02_02";

comment "Add items";
_obj linkItem "vn_b_item_map";
_obj linkItem "vn_b_item_compass";
_obj linkItem "vn_b_item_watch";
_obj linkItem "vn_b_item_radio_urc10";


