
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
_obj addWeapon "vn_m1911";
_obj addHandgunItem "vn_m1911_mag";

comment "Add containers";
_obj forceAddUniform "vn_b_uniform_k2b_02_01";
_obj addVest "vn_b_vest_aircrew_05";
_obj addBackpack "B_LegStrapBag_black_F";

comment "Add binoculars";
_obj addWeapon "vn_mk21_binocs";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "vn_b_item_firstaidkit";};
for "_i" from 1 to 3 do {_obj addItemToUniform "vn_m1911_mag";};
_obj addItemToUniform "vn_m18_purple_mag";
_obj addItemToUniform "vn_m18_green_mag";
_obj addItemToUniform "vn_m18_red_mag";
for "_i" from 1 to 3 do {_obj addItemToVest "vn_m1911_mag";};
_obj addItemToVest "Chemlight_green";
_obj addItemToBackpack "vn_b_item_toolkit";
_obj addItemToBackpack "vn_mine_satchel_remote_02_mag";
_obj addHeadgear "vn_b_helmet_svh4_02_02";
_obj addGoggles "vn_b_aviator";

comment "Add items";
_obj linkItem "vn_b_item_map";
_obj linkItem "vn_b_item_compass";
_obj linkItem "vn_b_item_watch";
_obj linkItem "vn_b_item_radio_urc10";
