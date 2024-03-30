
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
_obj addWeapon "vn_m79";
_obj addPrimaryWeaponItem "vn_40mm_m381_he_mag";
_obj addPrimaryWeaponItem "vn_40mm_m576_buck_mag";
_obj addWeapon "vn_m1911";
_obj addHandgunItem "vn_m1911_mag";

comment "Add containers";
_obj forceAddUniform "vn_b_uniform_macv_01_07";
_obj addVest "vn_b_vest_usarmy_05";
_obj addBackpack "vn_b_pack_lw_01";

comment "Add binoculars";
_obj addWeapon "vn_mk21_binocs";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "vn_b_item_firstaidkit";};
for "_i" from 1 to 3 do {_obj addItemToUniform "vn_m1911_mag";};
_obj addItemToUniform "Chemlight_green";
_obj addItemToUniform "vn_m18_green_mag";
_obj addItemToUniform "vn_m18_white_mag";
_obj addItemToUniform "vn_m67_grenade_mag";
_obj addItemToVest "vn_m67_grenade_mag";
for "_i" from 1 to 6 do {_obj addItemToVest "vn_40mm_m381_he_mag";};
_obj addItemToVest "vn_m1911_mag";
for "_i" from 1 to 3 do {_obj addItemToVest "vn_40mm_m680_smoke_w_mag";};
for "_i" from 1 to 2 do {_obj addItemToBackpack "vn_40mm_m381_he_mag";};
for "_i" from 1 to 5 do {_obj addItemToBackpack "vn_40mm_m680_smoke_w_mag";};
for "_i" from 1 to 4 do {_obj addItemToBackpack "vn_40mm_m576_buck_mag";};
for "_i" from 1 to 4 do {_obj addItemToBackpack "vn_40mm_m397_ab_mag";};
for "_i" from 1 to 2 do {_obj addItemToBackpack "vn_m1911_mag";};
_obj addHeadgear "vn_b_helmet_m1_04_01";

comment "Add items";
_obj linkItem "vn_b_item_map";
_obj linkItem "vn_b_item_compass_sog";
_obj linkItem "vn_b_item_watch";
_obj linkItem "vn_b_item_radio_urc10";
