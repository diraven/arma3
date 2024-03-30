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
_obj addWeapon "LIB_M1908";
_obj addHandgunItem "LIB_8Rnd_9x19_P08";

comment "Add containers";
_obj forceAddUniform "U_LIB_GER_LW_pilot";
_obj addVest "V_LIB_GER_OfficerBelt";
_obj addBackpack "B_LIB_GER_LW_Paradrop";

comment "Add items to containers";
for "_i" from 1 to 2 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 4 do {_obj addItemToUniform "LIB_8Rnd_9x19_P08";};
_obj addHeadgear "H_LIB_GER_LW_PilotHelmet";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "LIB_GER_ItemCompass_deg";
_obj linkItem "LIB_GER_ItemWatch";
_obj linkItem "ItemRadio";

