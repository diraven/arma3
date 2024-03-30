class CfgGradPersistence
{
  missionTag = "JAGER";
  loadOnMissionStart = 1;
  missionWaitCondition = "true";
  playerWaitCondition = "true";

  // 1 - only editor placed
  // 2 - all
  // 3 - only script or curator placed during the mission
  saveUnits = 0;
  saveVehicles = 3;
  saveContainers = 3;
  saveStatics = 3;
  saveGradFortificationsStatics = 0;
  saveMarkers = 0;
  saveTasks = 0;
  saveTriggers = 0;

  // 0 - off
  // 1 -on
  savePlayerInventory = 1;
  savePlayerDamage = 0;
  savePlayerPosition = 1;
  savePlayerMoney = 1;

  saveTeamAccounts = 0;

  blacklist[] = {};

  class customVariables
  {
    class StaticWaterSupply
    {
      varName = "ace_field_rations_currentWaterSupply";
      varNamespace = "static";
      public = 1;
    };
    class PlayerThirst
    {
      varName = "acex_field_rations_thirst";
      varNamespace = "player";
      public = 1;
    };
    class PlayerHunger
    {
      varName = "acex_field_rations_hunger";
      varNamespace = "player";
      public = 1;
    };
  };
};
