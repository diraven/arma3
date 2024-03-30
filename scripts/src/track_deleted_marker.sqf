/*
Записує хто видалив маркер у вкладку "Маркери".

Помістити в init.sqf.

Автор: Вельмишановний Лорд Шейд
*/

marker_reg = {
    params ["_name","_markertext","_side"];
    if (isNil "marker_reg_logic") then {
        marker_reg_logic = true;
        player createDiarySubject ["ukaz_marker_reg","Маркери"];
    };
    if (_side == sideEnemy) exitWith {};
    _text = "";
    {
        _x params ["_time"];
        if (count str _time > 1) then {_text = _text + str _time} else {_text = _text + "0" + str _time};
        if (_forEachIndex != 2) then {_text = _text + ":"};
    } forEach [systemTime#3,systemTime#4,systemTime#5];
    _text = _text +  "  <font color='#cccc00'>" + _name + "</font color>  видалив маркер  <font color='#cccc00'>" + _markertext + "</font color>";
    player createDiaryRecord ["ukaz_marker_reg", ["Лого видалення", _text]];
};

addMissionEventHandler ["MarkerDeleted", {
    params ["_marker", "_local"];
    if (!_local) exitWith {};
    _name = "";
    if (isServer) then {_name = "Сервер"} else {_name = name player};
    _markertext = "";
    if (markerText _marker == "") then {_markertext = "--------"} else {_markertext = markerText _marker};
    if (markerType _marker == "") then {_markertext = "Лінію"};
    _side = sideLogic;
    if (!isNil {player}) then {_side = side player};
    [_name, _markertext, _side] remoteExec ["marker_reg"];
}];
