
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
_obj addWeapon "vn_xm177_short";
_obj addPrimaryWeaponItem "vn_m16_20_mag";
_obj addWeapon "vn_m10";
_obj addHandgunItem "vn_m10_mag";

comment "Add containers";
_obj forceAddUniform "vn_b_uniform_k2b_01_01";
_obj addVest "vn_b_vest_aircrew_04";
_obj addBackpack "B_LegStrapBag_black_F";

comment "Add binoculars";
_obj addWeapon "vn_mk21_binocs";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "vn_b_item_firstaidkit";};
_obj addItemToUniform "vn_m61_grenade_mag";
for "_i" from 1 to 2 do {_obj addItemToUniform "vn_m18_red_mag";};
for "_i" from 1 to 2 do {_obj addItemToUniform "vn_m18_yellow_mag";};
_obj addItemToUniform "vn_m10_mag";
for "_i" from 1 to 6 do {_obj addItemToVest "vn_m16_20_mag";};
_obj addItemToVest "vn_m10_mag";
_obj addItemToBackpack "vn_b_item_toolkit";
_obj addItemToBackpack "vn_mine_satchel_remote_02_mag";
_obj addHeadgear "vn_b_helmet_aph6_02_01";
_obj addGoggles "vn_b_acc_ms22001_01";

comment "Add items";
_obj linkItem "vn_b_item_map";
_obj linkItem "vn_b_item_compass";
_obj linkItem "vn_b_item_watch";
_obj linkItem "vn_b_item_radio_urc10";
