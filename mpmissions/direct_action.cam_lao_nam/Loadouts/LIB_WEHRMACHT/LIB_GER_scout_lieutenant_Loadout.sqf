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
_obj forceAddUniform "fow_u_ger_pzlehr_01_2nd_leutnant";
_obj addVest "fow_v_heer_p38";

comment "Add items to containers";
for "_i" from 1 to 2 do {_obj addItemToUniform "FirstAidKit";};
_obj addHeadgear "fow_h_ger_officer_cap";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "LIB_GER_ItemCompass_deg";
_obj linkItem "LIB_GER_ItemWatch";
_obj linkItem "ItemRadio";