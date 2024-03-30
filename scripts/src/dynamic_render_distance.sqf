/*
Автоматично змінює дальність промальовки в залежності від FPS.

Виконувати на сервері локально.

Автор: Вельмишановний Лорд Шейд
*/

UkAZ_fps = {
    private _bool = param [0, true, [true]];
    if (!_bool)  exitwith {din_fps = false;};
    if (din_fps) exitwith {};
    fps_step = [];
    for "_i" from 0 to 99 do {fps_step set [_i, diag_fps];};
    fps_mid = diag_fps;
    fps_limit = 0;
    fps_stepindex = 0;
    maxViewDis = 1500;
    din_fps = true;
    setViewDistance -1;
    setObjectViewDistance maxViewDis;
    [] spawn { 
          while {din_fps} do {
            sleep 0.1;
            fps_mid = 0;
            {
                fps_mid = fps_mid + _x;
            } forEach fps_step;
            fps_mid = fps_mid / 100;
            fps_step set [fps_stepindex, diag_fps];
            if ((fps_stepindex + 1) >= 100) then {fps_stepindex = 0;} else {fps_stepindex = fps_stepindex + 1;};
            maxViewDis = 250;
            if (fps_mid > 7) then {maxViewDis = 250;};
            if (fps_mid > 17) then {maxViewDis = 500;};
            if (fps_mid > 27) then {maxViewDis = 750;};
            if (fps_mid > 37) then {maxViewDis = 1000;};
            if (fps_mid > 47) then {maxViewDis = 1250;};
            if (fps_mid > 57) then {maxViewDis = 1500;};
            if (getObjectViewDistance#0 < maxViewDis) then {if ((getObjectViewDistance#0 + 5) > maxViewDis) exitwith {}; setObjectViewDistance (getObjectViewDistance#0 + 5);};
            if (getObjectViewDistance#0 > maxViewDis) then {if ((getObjectViewDistance#0 - 5) < maxViewDis) exitwith {}; setObjectViewDistance (getObjectViewDistance#0 - 5);};
            //hintSilent str [(fps_mid toFixed 0),viewDistance];
         };
        setViewDistance -1;
        setObjectViewDistance -1;
    };
};
publicVariable "UkAZ_fps";
[true] remoteExecCall ["UkAZ_fps",0,"jip_0"];
