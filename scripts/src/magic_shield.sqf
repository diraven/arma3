/*
Обмежує отриману шкоду 10% за секунду.

Виконувати на клієнті локально.

Автор: Вельмишановний Лорд Шейд
*/

[] spawn {
    while {true} do {
        max_damage = damage player + 0.1;
        sleep 1;
    };
};

player addEventHandler ["HandleDamage", {
    params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];
    _return = _unit getHitIndex _hitIndex;
    if ((_return + _damage) > max_damage) then {_return = max_damage};
    _return;
}];