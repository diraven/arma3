
	BEW_v_tutorialsDiarySubject = player createDiarySubject ["Tutorials", "Tutorials"];	
		
	_tutorials = [
	
		["Discord Link",	"<br />Join the BillyEatWorld community for more info on Direct Action or to squad up with other DA players - https://discord.gg/zCCVqXUG95"],
		
		["Earplugs",	"<br />Press *END* to toggle earplugs."],
		
		["View Distance",	"<br />Press *CTRL + \* (if running CBA) or click the action in the action menu to open view distance settings."],
		
		["Loadouts",	"<br />Adjust your LOADOUT and RESUPPLY at the ARSENAL CRATES found at the HQ and friendly camps."],
		
		["The Outpost",	"<br />OUTPOST CRATES can be loaded onto trucks or lifted by aircraft to a remote location to deploy the OUTPOST. This will act as a deployable team spawn and resupply point."],
		
		["Fast Travel",	"<br />FAST TRAVEL between the HQ and discovered friendly camps using the action on the flag poles."],
		
		["AI Helis",	"<br />The crewed TRANSPORT HELICOPTERS at the HQ are AI controlled. Get in, activate the action, choose a location on the map, and they will fly you wherever you want to go."],
		
		["Paradrop Aircraft",	"<br />The crewed PARADROP PLANES at the HQ are AI controlled. Get in, activate the action, choose a location on the map, and they will fly you wherever you want to go."],
		
		["Extraction Helis",	"<br />The SQUAD LEADER can remotely call in an AI TRANSPORT HELI using an action. Everyone else must be inside the vehicle to give orders to the AI crew."],
		
		["Activating Vehicles",	"<br />VEHICLES will need to be ACTIVATED before you can use them. You will not be able to ACTIVATE some VEHICLES until you have reached a higher MISSION LEVEL. You will not see the ACTIVATE action if your class is unable to operate it."],
		
		["Vehicle Service",	"<br />VEHICLES can be RESUPPLIED and REPAIRED at their appropriate SERVICE PAD marked in yellow on the map."],
		
		["Unlocking Gear",	"<br />You can UNLOCK NEW GEAR in the ARSENAL by discovering FRIENDLY CAMPS and by advancing to a higher MISSION LEVEL by completing objectives."],
		
		["Vehicle Restrictions",	"<br />Weapons, vehicles and gear are RESTRICTED in this mission. To access some vehicles and gear you will need to be playing the appropriate CLASS."],
		
		["Recruiting AI",	"<br />SQUAD LEADERS can RECRUIT AI at the Infantry HQ, up to 10 total squad members (including players)."],
		
		["Gathering Intel",	"<br />INTEL can be gathered at and around enemy camps from dead enemy officers, from intel objects, and by rescuing hostages. This will unlock more specialised SIDE MISSIONS for your team to complete."],
		
		["Towers / Emplacements",	"<br />Some mission critical objects are designed to be destroyed only by infantry. Make sure you take a SATCHEL CHARGE with you on missions as these are needed to complete a number of destroy objectives."],
		
		["Drones",	"<br />Only the UAV OPERATOR can spawn and operate DRONES when within 5m of a DRONE CONSOLE or RECON JTAC"],
		
		["Fire Support",	"<br />The TEAM LEADER and the RECON JTAC roles are able to call in fire support missions. Look through your BINOCULARS and you will see the action to call the fire mission."],
		
		["Mod Compatibility",	"<br />Direct Action supports many faction mods, but not everything is automatically detected. Make sure to grab a pre-made mod preset from the BillyEatWorld Discord server to avoid most issues."]

	];


	{
	
		_tutorialTitle = _x select 0;
		_tutorialText = _x select 1;

		player createDiaryRecord ["Tutorials", [_tutorialTitle, _tutorialText]];
	
	} forEach _tutorials;
	