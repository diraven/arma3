
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

comment "Add containers";
_obj forceAddUniform "vn_b_uniform_macv_04_06";
_obj addVest "vn_b_vest_usarmy_01";

comment "Add binoculars";
_obj addWeapon "vn_m19_binocs_grn";

comment "Add items to containers";
_obj addItemToUniform "vn_b_item_firstaidkit";
for "_i" from 1 to 2 do {_obj addItemToUniform "vn_m61_grenade_mag";};
_obj addItemToUniform "vn_m34_grenade_mag";
for "_i" from 1 to 3 do {_obj addItemToUniform "vn_m16_20_t_mag";};
_obj addHeadgear "vn_b_boonie_02_06";

comment "Add items";
_obj linkItem "vn_b_item_map";
_obj linkItem "vn_b_item_compass";
_obj linkItem "vn_b_item_watch";
_obj linkItem "vn_b_item_radio_urc10";

comment "Set identity";
[_obj,"WhiteHead_08","male11eng"] call BIS_fnc_setIdentity;


