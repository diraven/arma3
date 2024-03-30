/*
Приховує об'єкти карти.

Виконувати на сервері локально.

Автор: Вельмишановний Лорд Шейд
*/

_axis = worldSize / 2;
_center = [_axis, _axis , 0];
_radius = sqrt 2 * _axis;
_housesArray = nearestTerrainObjects [_center, ["BUILDING", "HOUSE"], _radius, false, true];
{
    switch (typeOf _x) do {
        case "blablabal_0" : {_x hideObjectGlobal true;};
        case "blablabal_1" : {_x hideObjectGlobal true;};
    };
} forEach _housesArray;
