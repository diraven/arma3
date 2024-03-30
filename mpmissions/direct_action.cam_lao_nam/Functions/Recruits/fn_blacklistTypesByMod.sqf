
	_allTypes = _this select 0;

	// Remove AA
	
		if ((BEW_V_Vietnam or BEW_V_WW2) and !(BEW_v_forceVanilla)) then {
		
			_allTypes = _allTypes - ["B_soldier_AA_F"];
		
		};
	
	_allTypes