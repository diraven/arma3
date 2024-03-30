	_veh = param [0];
	
	
	switch (typeOf _veh) do {	
		
		case "OPTRE_M412_IFV_UNSC"	:	{
				
			_veh addWeaponTurret ["OPTRE_M247T_Coax", [0]];
				
			for "_i" from 1 to 5 do {

			_veh addMagazineTurret ["OPTRE_100Rnd_762x51_Box_Tracer",[0]];

			};

		};
		
		case "OPTRE_M413_MGS_UNSC"	:	{
				
			_veh addWeaponTurret ["OPTRE_M247T_Coax", [0]];
				
			for "_i" from 1 to 5 do {

			_veh addMagazineTurret ["OPTRE_100Rnd_762x51_Box_Tracer",[0]];

			};

		};
		
		
		case "OPTRE_M808B2"	:	{
				
			_veh addWeaponTurret ["OPTRE_M247T_Coax", [4]];
				
			for "_i" from 1 to 5 do {

			_veh addMagazineTurret ["OPTRE_100Rnd_762x51_Box_Tracer",[4]];

			};

		};
			
		default {};
		
	};



