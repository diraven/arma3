/*
Показує ніки над головами гравців.

Виконувати на сервері локально.

Автор: Вельмишановний Лорд Шейд
*/

UkAZ_tag_name = {
    private _bool = param [0, true, [true]];
    if (!_bool) exitwith {tag_name = false;};
    if (tag_name) exitwith {};
    tag_name = true;
    [] spawn { 
        _script = {{_unit = _x; _dist = (player distance _unit); _see = [objNull, "IFIRE"] checkVisibility [eyePos player, eyePos _unit]; if ((_see > 0.5)&&(_dist <= 15)) then {drawIcon3D ['',[1,1,0.2,2.5-3*(_dist/(_dist+5))],[visiblePosition _unit select 0,visiblePosition _unit select 1,(visiblePosition _unit select 2) + ((_unit modelToWorld (_unit selectionPosition 'head')) select 2) + 0.4],0,0,0,name _unit,2,0.1 - _dist/(_dist+5)*0.1,'PuristaMedium'];};} forEach allPlayers - [player] - vehicles;};
        _handle = [_script] call CBA_fnc_addPerFrameHandler;
        waitUntil {!tag_name};
        [_handle] call CBA_fnc_removePerFrameHandler;
    };
};
publicVariable "UkAZ_tag_name";
[true] remoteExecCall ["UkAZ_tag_name",0,"jip_1"];
