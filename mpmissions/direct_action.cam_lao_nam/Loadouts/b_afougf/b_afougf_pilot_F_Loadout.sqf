
_obj = param [0];

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
_obj addWeapon "rhs_weap_makarov_pm";
_obj addHandgunItem "rhs_mag_9x18_8_57N181S";

comment "Add containers";
_obj forceAddUniform "U_B_afou_df15_mm14";

comment "Add binoculars";
_obj addWeapon "Binocular";

comment "Add items to containers";
_obj addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_obj addItemToUniform "rhs_mag_9x18_8_57N181S";};
_obj addHeadgear "rhs_zsh7a_mike_green";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";
_obj linkItem "ItemGPS";
_obj linkItem "rhs_1PN138";
