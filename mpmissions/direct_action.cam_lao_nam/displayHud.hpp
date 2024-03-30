#define CT_STATIC         0
#define ST_LEFT           0x00
#define ST_CENTER         0x02

class KOZHUD_4
{
  idd = 1005;
  movingEnable=0;
  duration=1e+011;
  name = "KOZHUD_4_name";
  onLoad = "uiNamespace setVariable ['KOZHUD_4', _this select 0];";
onUnLoad = "uiNamespace setVariable ['KOZHUD_4', nil]";
  controlsBackground[] = {};
  objects[] = {};
class controls
{
class BG_ScreenMessageBox2: RscStructuredText
{
idc = 1100;
x = 0.38375 * safezoneW + safezoneX;
y = 0.416 * safezoneH + safezoneY;
w = 0.4125 * safezoneW;
h = 0.088 * safezoneH;
};
};
};