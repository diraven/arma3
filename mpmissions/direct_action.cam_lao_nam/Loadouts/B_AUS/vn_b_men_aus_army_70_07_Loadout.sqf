
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
_obj addWeapon "vn_l1a1_01_gl";
_obj addPrimaryWeaponItem "vn_l1a1_20_t_mag";
_obj addWeapon "vn_hp";
_obj addHandgunItem "vn_hp_mag";

comment "Add containers";
_obj forceAddUniform "vn_b_uniform_aus_04_01";
_obj addVest "vn_b_vest_anzac_01";
_obj addBackpack "vn_b_pack_p08_01";

comment "Add binoculars";
_obj addWeapon "vn_m19_binocs_grn";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addItemToUniform "vn_m18_green_mag";
_obj addItemToUniform "vn_m18_red_mag";
for "_i" from 1 to 2 do {_obj addItemToUniform "vn_m18_white_mag";};
for "_i" from 1 to 2 do {_obj addItemToUniform "vn_m61_grenade_mag";};
for "_i" from 1 to 7 do {_obj addItemToVest "vn_l1a1_20_t_mag";};
for "_i" from 1 to 3 do {_obj addItemToVest "vn_hp_mag";};
for "_i" from 1 to 5 do {_obj addItemToBackpack "vn_22mm_n94_heat_mag";};
for "_i" from 1 to 5 do {_obj addItemToBackpack "vn_22mm_m61_frag_mag";};
_obj addHeadgear "vn_b_boonie_06_01";

comment "Add items";
_obj linkItem "vn_b_item_map";
_obj linkItem "vn_b_item_compass";
_obj linkItem "vn_b_item_watch";
_obj linkItem "vn_b_item_radio_urc10";
