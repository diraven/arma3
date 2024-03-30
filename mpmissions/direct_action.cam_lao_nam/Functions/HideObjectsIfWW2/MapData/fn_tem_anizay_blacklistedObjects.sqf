	
	//if ((is3DENPreview)) exitWith {};
	
	if (!(hasInterface)) exitWith {};
		
	if (!(toupper worldName == (toUpper "tem_anizay"))) exitWith {};
		
	_blacklistedObjects = [
		
		289728,
		290502,
		289730,
		289731,
		290416,
		290504,
		139516,
		139515,
		289808,
		139517,
		275583,
		140234,
		275700,
		140233,
		275696,
		289729,
		290503,
		355831,
		170823,
		237281,
		240103,
		236420,
		244487,
		222050,
		221227,
		245399,
		246824,
		134785,
		143225,
		224847,
		140741,
		234387,
		235127,
		235126,
		231040,
		255462,
		246182,
		239348,
		131306,
		136287,
		137304,
		136288,
		130698,
		257135,
		268680,
		268594,
		211687,
		116529,
		184919,
		184920,
		123178,
		269327,
		270061,
		269456,
		139750,
		269403,
		269404,
		139591,
		253939,
		272932,
		272931,
		126664,
		181992,
		258628,
		126086,
		271312,
		117850,
		259019,
		186843,
		265771,
		92713,
		93856,
		93903,
		279705,
		187107,
		120174,
		279802,
		120110,
		177346,
		260963,
		116749,
		182329,
		182235,
		186899,
		73619,
		117036,
		182275,
		117035,
		73618,
		108742,
		176216,
		92054,
		118510,
		184336,
		176482,
		81429,
		88061,
		177863,
		183702,
		183703,
		176085,
		79264,
		72537,
		344290,
		72485,
		72484,
		72612,
		70492,
		86685,
		183906,
		177951,
		82231,
		78191,
		79917,
		188707,
		80011,
		42220,
		42188,
		174559,
		77307,
		174760,
		75523,
		66801,
		73915,
		76508,
		159246,
		76307,
		76686,
		180639,
		315602,
		76830,
		159366,
		315669,
		76829,
		190568,
		286648,
		180661,
		190569,
		159694,
		76778,
		159693,
		180551,
		49834,
		63278,
		180561,
		51284,
		277493,
		277492,
		58226,
		58309,
		155569,
		58503,
		58179,
		58470,
		155222,
		48240,
		154734,
		181303,
		181325,
		356007,
		61577,
		154448,
		289844,
		58026,
		154402,
		30297,
		314838,
		57077,
		289670,
		315103,
		316939,
		150015,
		325423,
		144916,
		43956,
		149629,
		45459,
		197317,
		181684,
		325454,
		56797,
		325455,
		290192,
		325695,
		11040,
		358686,
		145396,
		358687,
		359073,
		145443,
		298070,
		7973,
		298409,
		7960,
		26004,
		325204,
		7659,
		7953,
		25761,
		376071,
		298009,
		146484,
		26190,
		7895,
		325230,
		26191,
		325231,
		161051,
		197874,
		143996,
		11668,
		297631,
		161075,
		197873,
		376892,
		376893,
		376891,
		376925,
		383757,
		161021,
		146413,
		16433,
		377385,
		376978,
		196520,
		5402,
		5401,
		197993,
		377387,
		377386,
		377792,
		325659,
		377793,
		16797,
		370227,
		292309,
		298532,
		196892,
		196891,
		196668,
		376749,
		197071,
		16814,
		200622,
		298906,
		327613,
		298907,
		160935,
		160805,
		192516,
		151889,
		151024,
		150812,
		390013,
		17152,
		170414,
		168319,
		328064,
		328065,
		388055,
		328066,
		192618,
		192619,
		18395,
		192636,
		334330,
		164418,
		293835,
		329749,
		403655,
		172341,
		306805,
		171192,
		170977,
		395073,
		395072,
		164545,
		170917,
		412423,
		392493,
		393167,
		393673,
		171446,
		394092,
		394301,
		394093,
		394330,
		394135,
		397855,
		416265,
		397878,
		171462,
		405800,
		397724,
		417021,
		417187,
		417580,
		165620,
		418773,
		418772,
		406545,
		418879,
		419310,
		406822,
		270151,
		270153,
		270152,
		270154,
		270155,
		270156,
		270157,
		270158,
		269995,
		75431,
		75432,
		75478,
		75475,
		75423,
		75476,
		75471,
		75421,
		75469,
		75428,
		75468,
		75477,
		75465,
		75426,
		75467,
		75429,
		75466,
		75479,
		75899,
		75470,
		75900,
		75430,
		75474,
		75427,
		75902,
		75422,
		75425,
		75473,
		75901,
		75424,
		75903,
		75472,
		75367,
		75368,
		75398,
		75371,
		75366,
		75396,
		75365,
		75370,
		75395,
		75374,
		75399,
		75369,
		75397,
		75372,
		75815,
		75817,
		75373,
		75814,
		75100,
		75816,
		74951,
		75813,
		75106,
		74948,
		75611,
		75103,
		75104,
		75612,
		74950,
		75105,
		74954,
		75145,
		75101,
		75613,
		75148,
		75142,
		75099,
		75143,
		75149,
		74952,
		75146,
		74949,
		75147,
		75610,
		75107,
		75144,
		75097,
		75141,
		74953,
		75140,
		75609,
		75139,
		75098,
		75102,
		74955,
		74826,
		75013,
		75012,
		75014,
		263896,
		263895,
		111252,
		111253,
		264185,
		265853,
		264543,
		264544,
		264545,
		264696,
		266147,
		264695,
		266146,
		264697,
		266207,
		266145,
		265227,
		266144,
		266486,
		266487,
		266206,
		266550,
		266549,
		266547,
		266548,
		266546,
		266605,
		266606,
		266686,
		266685,
		78149,
		78087,
		75463,
		75464,
		75810,
		75812,
		75811,
		75093,
		75094,
		155747,
		67050,
		156977,
		155776,
		156978,
		156509,
		156611,
		156610,
		156609,
		153937,
		153450,
		159233,
		159084,
		156696,
		156700,
		156698,
		156699,
		156697,
		159475,
		159474,
		159348,
		51914,
		51913,
		159349,
		159439,
		159442,
		159440,
		159441,
		189137,
		189138,
		51634,
		50581,
		50517,
		58918,
		54751,
		54750,
		56921,
		4937,
		4938,
		4786,
		369963,
		369964,
		370057,
		370056,
		370120,
		22737,
		22682,
		14651,
		14650,
		388627,
		388626,
		201056,
		269682,
		275666,
		75133,
		75068,
		156769,
		158740,
		63494,
		289765,
		290536,
		201999,
		195427,
		170899,
		75433,
		75904,
		75375,
		75108,
		75150,
		75109,
		170860,
		167172,
		170913,
		139742,
		289617,
		245801,
		269204,
		251127,
		266814,
		348051,
		347072,
		323640,
		25957,
		343597,
		370054,
		168568,
		388548,
		393672,
		278842,
		265803,
		345043,
		351173,
		315617,
		286028,
		188339,
		289965,
		169777,
		333988,
		418401,
		241310,
		268671,
		139570,
		138634,
		124541,
		124681,
		275751,
		157915,
		158205,
		58618,
		58619,
		58284,
		58283,
		58537,
		58377,
		355839,
		13048,
		15196,
		3139,
		1672,
		363957,
		201055,
		201054,
		201053,
		135533,
		230919,
		231028,
		131492,
		220159,
		130459,
		129711,
		263894,
		264184,
		279292,
		279960,
		264394,
		279291,
		264542,
		266018,
		265226,
		266485,
		266545,
		266544,
		267673,
		91088,
		346485,
		68523,
		347332,
		350827,
		53013,
		315635,
		315634,
		51912,
		189366,
		189784,
		181402,
		189785,
		316572,
		189638,
		323444,
		323552,
		30339,
		27983,
		56552,
		297719,
		297523,
		343567,
		343599,
		27498,
		291690,
		27396,
		291689,
		8481,
		376924,
		327438,
		377438,
		377572,
		369390,
		377376,
		377573,
		381001,
		23914,
		16389,
		369962,
		326046,
		378461,
		377766,
		197630,
		368931,
		196929,
		6908,
		198750,
		161671,
		15977,
		2225,
		401260,
		302,
		333785,
		334240,
		333846,
		334565,
		201052,
		201959,
		393138,
		166520,
		418301,
		418753,
		245664,
		264285,
		349955,
		189585,
		277526,
		291316,
		377502,
		168559,
		388680,
		333838,
		418824,
		270263,
		270264,
		270265,
		270266,
		270249,
		270247,
		270148,
		270248,
		270146,
		270149,
		270150,
		270147,
		270250,
		270145,
		270252,
		270258,
		270259,
		270260,
		270261,
		270251,
		270269,
		270262,
		270268,
		270267,
		269990,
		270257,
		270255,
		269992,
		270256,
		269994,
		270254,
		270317,
		270318,
		270319,
		270253,
		269993,
		270224,
		270225,
		270226,
		270227,
		269991,
		270228,
		270229,
		270230,
		270030,
		269989,
		270031,
		270032,
		201035,
		201037,
		201034,
		201033,
		201036,
		201709,
		201039,
		201710,
		201701,
		201711,
		201042,
		201038,
		201713,
		201702,
		201041,
		201252,
		201032,
		200978,
		201712,
		201251,
		201040,
		200991,
		200988,
		201271,
		200990,
		201254,
		200980,
		201703,
		201059,
		200992,
		200979,
		201272,
		200981,
		201253,
		200982,
		201256,
		201706,
		201065,
		200989,
		200987,
		201258,
		200977,
		200985,
		201255,
		200986,
		201250,
		201257,
		201746,
		201705,
		200984,
		201191,
		201060,
		201742,
		201744,
		201008,
		201190,
		200983,
		201708,
		201745,
		201192,
		195503,
		201240,
		201747,
		201741,
		201249,
		201193,
		195507,
		201061,
		201715,
		201197,
		201009,
		195509,
		201717,
		201704,
		201199,
		201716,
		195506,
		201242,
		201198,
		201743,
		201241,
		201187,
		201718,
		195505,
		201700,
		201063,
		201194,
		201714,
		195508,
		201012,
		201195,
		195504,
		201261,
		201196,
		201883,
		201248,
		201189,
		201178,
		195510,
		201260,
		201075,
		201062,
		201259,
		195511,
		201076,
		201010,
		195469,
		202722,
		201071,
		202723,
		201264,
		201886,
		201179,
		195472,
		201181,
		201188,
		201068,
		202721,
		201266,
		202716,
		202720,
		201070,
		195473,
		201011,
		201707,
		201265,
		202724,
		201069,
		195470,
		202719,
		201263,
		201072,
		202726,
		201887,
		201182,
		195468,
		201974,
		201067,
		201843,
		201262,
		201180,
		201200,
		202725,
		201074,
		202718,
		195471,
		201202,
		201244,
		202677,
		201073,
		201268,
		202676,
		195474,
		201973,
		201013,
		202674,
		201267,
		201208,
		201881,
		195475,
		201057,
		201845,
		201183,
		202678,
		201270,
		201210,
		202675,
		202717,
		195476,
		201243,
		201246,
		201972,
		201269,
		202679,
		201204,
		195374,
		202680,
		202681,
		201885,
		201247,
		195376,
		201058,
		201201,
		201847,
		201205,
		201905,
		202682,
		202742,
		201979,
		201211,
		195375,
		201245,
		201474,
		201077,
		202683,
		195373,
		201209,
		202022,
		201906,
		202023,
		201478,
		201884,
		201078,
		201980,
		201844,
		202029,
		201184,
		201207,
		195371,
		202749,
		201476,
		202028,
		201473,
		201206,
		202027,
		201907,
		201185,
		201015,
		201976,
		202026,
		201014,
		201479,
		201888,
		201846,
		201203,
		202025,
		201482,
		201414,
		201978,
		195372,
		201016,
		202024,
		201908,
		201475,
		202748,
		201480,
		201079,
		201975,
		202030,
		201017,
		201481,
		201417,
		201080,
		201186,
		201964,
		201020,
		201904,
		201977,
		201477,
		201882,
		201965,
		201842,
		201413,
		201021,
		201895,
		195390,
		201963,
		201064,
		201897,
		202740,
		201970,
		201019,
		201966,
		201416,
		201910,
		201967,
		201420,
		201483,
		201962,
		201018,
		201899,
		201961,
		201484,
		201898,
		201412,
		195396,
		201969,
		201852,
		201066,
		202747,
		201909,
		201853,
		201415,
		201419,
		201971,
		202746,
		201854,
		201893,
		201968,
		201848,
		201894,
		201421,
		195392,
		201900,
		201313,
		201896,
		201422,
		201889,
		201418,
		201890,
		202743,
		201892,
		201880,
		201902,
		195391,
		201891,
		202744,
		201903,
		201901,
		201855,
		195395,
		201849,
		202745,
		201851,
		201850,
		195393,
		202750,
		195397,
		202751,
		195394,
		202741,
		202756,
		195401,
		202755,
		202753,
		202754,
		202757,
		202752,
		195402,
		201472,
		195400,
		201496,
		195410,
		195408,
		195398,
		195409,
		201499,
		195399,
		195412,
		201500,
		195407,
		195404,
		195403,
		195406,
		201411,
		201502,
		195411,
		195582,
		195574,
		195584,
		201439,
		201497,
		195405,
		201312,
		195579,
		195583,
		201442,
		201501,
		201323,
		195576,
		201441,
		201503,
		201328,
		195581,
		201440,
		201498,
		201325,
		195575,
		201446,
		201506,
		201330,
		195578,
		201443,
		201504,
		201326,
		195577,
		201444,
		201505,
		201327,
		195580,
		195758,
		201445,
		201507,
		201329,
		195789,
		201447,
		201517,
		195757,
		201324,
		195796,
		201451,
		201518,
		195821,
		201333,
		195803,
		201511,
		201449,
		201509,
		195802,
		201512,
		201332,
		201508,
		195793,
		201510,
		201448,
		195690,
		201515,
		195801,
		201514,
		201334,
		201513,
		195792,
		201516,
		195706,
		201450,
		201453,
		195800,
		201454,
		201331,
		201455,
		195794,
		195708,
		201458,
		201452,
		195799,
		201457,
		201335,
		201456,
		195795,
		195711,
		195798,
		201336,
		195790,
		195712,
		195797,
		201337,
		201339,
		195808,
		201341,
		195709,
		201340,
		195791,
		201338,
		201344,
		195806,
		201343,
		195707,
		195810,
		201342,
		201292,
		201293,
		195804,
		195710,
		201290,
		195811,
		201291,
		201294,
		195805,
		201298,
		195713,
		195812,
		201297,
		201296,
		201295,
		195807,
		195717,
		195816,
		195813,
		195817,
		195818,
		195809,
		195719,
		195819,
		195814,
		195718,
		195815,
		195820,
		195715,
		195720,
		195721,
		195722,
		195714,
		195723,
		195726,
		195725,
		195724,
		195716,
		170832,
		170854,
		170843,
		170852,
		170829,
		170853,
		170841,
		170851,
		170839,
		170833,
		170857,
		170856,
		170831,
		170850,
		170837,
		170842,
		170849,
		170838,
		170855,
		170830,
		170858,
		170828,
		170859,
		170827,
		170848,
		170836,
		167160,
		167138,
		167137,
		167161,
		170847,
		170835,
		170834,
		167155,
		167162,
		170845,
		170825,
		167145,
		167150,
		167143,
		167163,
		170846,
		170826,
		167144,
		167139,
		167164,
		170844,
		170840,
		167142,
		167168,
		167167,
		167141,
		167166,
		167140,
		167149,
		167165,
		170905,
		170908,
		167171,
		167148,
		170904,
		170909,
		167170,
		167146,
		170903,
		170911,
		170907,
		170912,
		167154,
		167158,
		170906,
		170910,
		167153,
		167159,
		167151,
		167156,
		167147,
		167169,
		167212,
		167214,
		167152,
		167157,
		167215,
		167211,
		167210,
		167216,
		167207,
		167213,
		167209,
		167217,
		167208,
		167218,
		246424,
		266596,
		350195,
		327504,
		166159
		
	];
	
	
	// Hide Objects
	
		_blacklistedObjects call BEW_FNC_hideObjectsByObjectID;
	