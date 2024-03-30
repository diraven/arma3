
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
_obj forceAddUniform "gm_ge_army_uniform_soldier_80_oli";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
_obj addHeadgear "gm_ge_headgear_beret_bdx_specop";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "gm_ge_army_conat2";
_obj linkItem "gm_watch_kosei_80";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "UK3CB_PVS5A";
