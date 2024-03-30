
_obj = param [0];


comment "Exported from Arsenal by Icekraks";

comment "[!] UNIT MUST BE LOCAL [!]";
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
_obj addWeapon "vn_m16_camo";
_obj addPrimaryWeaponItem "vn_m16_20_mag";
_obj addWeapon "vn_m72";
_obj addSecondaryWeaponItem "vn_m72_mag";
_obj addWeapon "vn_m1911";
_obj addHandgunItem "vn_m1911_mag";

comment "Add containers";
_obj forceAddUniform "vn_b_uniform_macv_01_07";
_obj addVest "vn_b_vest_usarmy_02";
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
_obj addItemToVest "vn_m18_white_mag";
for "_i" from 1 to 8 do {_obj addItemToVest "vn_m16_20_mag";};
for "_i" from 1 to 3 do {_obj addItemToBackpack "vn_mine_satchel_remote_02_mag";};
_obj addHeadgear "vn_b_helmet_m1_05_01";

comment "Add items";
_obj linkItem "vn_b_item_map";
_obj linkItem "vn_b_item_compass_sog";
_obj linkItem "vn_b_item_watch";
_obj linkItem "vn_b_item_radio_urc10";
