
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
_obj forceAddUniform "UK3CB_BAF_U_CombatUniform_DDPM_RM";

comment "Add binoculars";
_obj addWeapon "Rangefinder";
_obj addHeadgear "UK3CB_BAF_H_Beret_SAS_PRR";
_obj addGoggles "UK3CB_BAF_G_Tactical_Black";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "UK3CB_BAF_HMNVS";
