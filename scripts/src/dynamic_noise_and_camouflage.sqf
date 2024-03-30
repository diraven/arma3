/*
* Динамічно змінює коефіцієнт камуфляжу для гравця, на основі ваги рюкзака й ваги зброї, також при наявності дощу й туману.
* Динамічно змінює коефіцієнт шуму від гравця, на основі ваги, швидкості й стійки.
* Ці зміни впливають тільки на розрахунки АІ.

initPlayerLocal.sqf:
[] call UkAZ_CamoSystem;

Автор: Вельмишановний Лорд Шейд
*/

// Камуфляж.
UkAZ_CamoSystem = {
UkAZ_CamoSystemLogic = true;
[] spawn {
    _oldcamouflageCoef = 0;
    _newcamouflageCoef = 0;
    while {UkAZ_CamoSystemLogic} do {
        _rain = linearConversion [0,1,rain,0,0.1,true];
        _fog = linearConversion [0,1,fog,0,0.3,true];
        _ghill = if (toLower (uniform player) find "ghill" > -1) then {0.3} else {0};
        _backpackload = linearConversion [0,600,(getContainerMaxLoad backpack player),0.01,0.4,true];
        _backpackmass = linearConversion [0,100,(getNumber(configFile >> "cfgVehicles" >> backpack player >> "mass")),0.01,0.4,true];
        _backpack = ((_backpackload + _backpackmass)*0.5);
        _weaponnotinhands = if (currentWeapon player != secondaryWeapon player) then {secondaryWeapon player} else {""};
        _secondaryweapon = linearConversion [0,400,(getNumber(configFile >> "CfgWeapons" >> _weaponnotinhands >> "WeaponSlotsInfo" >> "mass")),0,0.4,true];
        _weaponnotinhands = if (currentWeapon player != primaryWeapon player) then {primaryWeapon player} else {""};
        _primaryweapon = linearConversion [0,400,(getNumber(configFile >> "CfgWeapons" >> _weaponnotinhands >> "WeaponSlotsInfo" >> "mass")),0,0.4,true];
        _backweapons = selectMax [0,_primaryweapon,_secondaryweapon];
        _weaponinhands = linearConversion [0,600,(getNumber(configFile >> "CfgWeapons" >> currentWeapon player >> "WeaponSlotsInfo" >> "mass")),0,0.4,true];
        _newcamouflageCoef = (0.7 - _rain - _fog - _ghill + _backpack + _weaponinhands + _backweapons);
        if (_newcamouflageCoef<0.1) then {_newcamouflageCoef=0.1};
        if (_newcamouflageCoef != _oldcamouflageCoef) then {
            _oldcamouflageCoef = _newcamouflageCoef;
            player setUnitTrait ["camouflageCoef",_newcamouflageCoef];
        };
        sleep 10;
    };
};

// Шум.
[] spawn {
    _oldaudibleCoef = 0;
    _newaudibleCoef = 0;
    while {UkAZ_CamoSystemLogic} do {
        _stanceindex = ["UNDEFINED", "PRONE", "CROUCH", "STAND"] find stance player;
        _stance = [0.1, 0.3, 0.7, 1.0] select _stanceindex;
        _rain = linearConversion [0,1,rain,1,0.6,true];
        _load = linearConversion [0,1,load player,1,1.6,false];
        _speed = linearConversion [0,24,speed player,1,9,true];
        _newaudibleCoef = (_stance * _rain * _load * _speed);
        if (_newaudibleCoef != _oldaudibleCoef) then {
            _oldaudibleCoef = _newaudibleCoef;
            player setUnitTrait ["audibleCoef",_newaudibleCoef];
        };
        sleep 0.75;
    };
};
};