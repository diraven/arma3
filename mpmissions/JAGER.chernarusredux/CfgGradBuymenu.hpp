class CfgGradBuymenu
{
    vehicleMarkers = 0;
    tracking = 1;
    trackingTag = "JAGER";
    playersLoseMoneyOnDeath = 0;

    // buyables set:
    class BruhShop
    {
        // category:
        class Money
        {
            kindOf = "Items";
            displayName = "Гроші";
            // items of this category:
            class JAGER_main_Uah_1
            {
                displayName = "";
                description = "Банкнота номіналом 1 гривня.";
                stock = 100;
            };
            class JAGER_main_Uah_2
            {
                displayName = "";
                description = "Банкнота номіналом 2 гривні.";
                stock = 100;
            };
            class JAGER_main_Uah_5
            {
                displayName = "";
                description = "Банкнота номіналом 5 гривень.";
                stock = 100;
            };
            class JAGER_main_Uah_10
            {
                displayName = "";
                description = "Банкнота номіналом 10 гривень.";
                stock = 100;
            };
            class JAGER_main_Uah_20
            {
                displayName = "";
                description = "Банкнота номіналом 20 гривень.";
                stock = 100;
            };
            class JAGER_main_Uah_50
            {
                displayName = "";
                description = "Банкнота номіналом 50 гривень.";
                stock = 100;
            };
            class JAGER_main_Uah_100
            {
                displayName = "";
                description = "Банкнота номіналом 100 гривень.";
                stock = 100;
            };
            class JAGER_main_Uah_200
            {
                displayName = "";
                description = "Банкнота номіналом 200 гривень.";
                stock = 100;
            };
            class JAGER_main_Uah_500
            {
                displayName = "";
                description = "Банкнота номіналом 500 гривень.";
                stock = 100;
            };
        };

        class Medical
        {
            kindOf = "Items";
            displayName = "Медицина";
            // items of this category:
            class ACE_fieldDressing
            {
                displayName = "";
                description = "Звичайний бинт.";
                stock = 100;
                price = 10;
            };
        };

        class Grocery
        {
            kindOf = "Items";
            displayName = "Бакалія";
            // items of this category:
            class ACE_WaterBottle
            {
                displayName = "Вода, просто чиста вода";
                description = "Не менше 2 літрів на день!";
                stock = 100;
                price = 12;
            };
            class ACE_MRE_ChickenTikkaMasala
            {
                displayName = "Мівіна куряча, гостра";
                description = "Може викликати печію.";
                stock = 100;
                price = 12;
            };
            class ACE_MRE_ChickenHerbDumplings
            {
                displayName = "Мівіна куряча, негостра";
                description = "Швидко, смачно, зараз.";
                stock = 100;
                price = 12;
            };
            class ACE_MRE_CreamChickenSoup
            {
                displayName = "Мівіна, суп швидкого приготування";
                description = "Треба поїсти варененького.";
                stock = 100;
                price = 12;
            };
        };
        class Tools
        {
            kindOf = "Items";
            displayName = "Інструменти";
            // items of this category:
            class ItemMap
            {
                displayName = "Мапа";
                description = "Так, наче хтось їх вміє читати...";
                stock = 100;
                price = 50;
            };
            class ItemCompass
            {
                displayName = "Компас";
                description = "Шо таке північ?";
                stock = 100;
                price = 50;
            };
            class ItemWatch
            {
                displayName = "Годинник";
                description = "Дехто з сучасної молоді не здатен зрозуміти який час показує аналоговий годинник.";
                stock = 100;
                price = 50;
            };
        };
        class Weapons
        {
            kindOf = "Weapons";
            displayName = "Зброя";
            // items of this category:
            class Pipe_aluminium
            {
                displayName = "Труба, алюміній";
                description = "Аргумент.";
                stock = 2;
                price = 50;
            };
        };

        class Vehicles
        {
            displayName = "Транспортні Засоби";
            kindOf = "Vehicles";

            class UK3CB_C_OLD_BIKE
            {
                displayName = "Велосипед";
                description = "Не існує кращого транспорту в апокаліпсис!";
                price = 500;
                stock = 1;
                // picture = "myPictureFolder\sportscar.paa"; // this item uses a custom picture
                // code = "(_this select 2) setFuel 0.5";     // this car will spawn with half a tank of gas
                spawnEmpty = true;
                // vehicleInit = "['Orange',false]";
            };
        };
    };
};