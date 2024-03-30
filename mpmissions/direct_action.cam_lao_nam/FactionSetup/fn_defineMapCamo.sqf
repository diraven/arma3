
	
	_mapName = toUpper worldName;

	BEW_v_MapCamo = switch (_mapName) do {
	
		case (toUpper "Altis")					:	{"Temperate"};
		case (toUpper "Malden")					:	{"Temperate"};
		case (toUpper "Tanoa")					:	{"Tropical"};
		case (toUpper "Cam_Lao_Nam")			:	{"Tropical"};
		case (toUpper "OPTRE_Madrigal")			:	{"Temperate"};
		case (toUpper "tem_anizay")				:	{"Desert"};
		case (toUpper "stozec")					:	{"Woodland"};
		case (toUpper "enoch")					:	{"Woodland"};
		case (toUpper "fapovo")					:	{"Woodland"};
		case (toUpper "fow_map_henderson")		:	{"Tropical"};
		case (toUpper "cup_chernarus_A3")		:	{"Woodland"};
		case (toUpper "I44_Omaha_V2")			:	{"Woodland"};
		case (toUpper "gm_weferlingen_summer")	:	{"Woodland"};
		case (toUpper "rhspkl")					:	{"Tropical"};
		case (toUpper "SefrouRamal")			:	{"Desert"};
		case (toUpper "Stratis")				:	{"Temperate"};		
		case (toUpper "isladuala3")				:	{"Desert"};
		case (toUpper "gm_weferlingen_winter")	:	{"Woodland"};
		default {"Woodland"};
	
	};
	
	
	
	