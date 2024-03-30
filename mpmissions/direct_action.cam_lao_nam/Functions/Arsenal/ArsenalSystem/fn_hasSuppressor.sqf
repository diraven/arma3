	_unit = param [0, player];
	_weaponAttachments = _unit weaponAccessories currentweapon _unit;

	_suppressorList = [
		
		// Vanilla

			'muzzle_snds_H',
			'muzzle_snds_L',
			'muzzle_snds_M',
			'muzzle_snds_B',
			'muzzle_snds_H_MG',
			'muzzle_snds_acp',
			'muzzle_snds_338_black',
			'muzzle_snds_338_green',
			'muzzle_snds_338_sand',
			'muzzle_snds_93mmg',
			'muzzle_snds_93mmg_tan',
			'muzzle_snds_570',
			'muzzle_snds_H_khk_F',
			'muzzle_snds_H_snd_F',
			'muzzle_snds_m_khk_F',
			'muzzle_snds_m_snd_F',
			'muzzle_snds_58_blk_F',
			'muzzle_snds_58_ghex_F',
			'muzzle_snds_58_hex_F',
			'muzzle_snds_B_khk_F',
			'muzzle_snds_B_snd_F',
			'muzzle_snds_65_TI_blk_F',
			'muzzle_snds_65_TI_hex_F',
			'muzzle_snds_65_TI_ghex_F',
			'muzzle_snds_H_MG_blk_F',
			'muzzle_snds_H_MG_khk_F',
			'muzzle_snds_B_lush_F',
			'muzzle_snds_B_arid_F',


		// PF
		
			'vn_s_m14',
			'vn_s_m16',
			'vn_s_m3a1',
			'vn_s_sten',
			'vn_s_m45',
			'vn_s_m45_camo',
			'vn_s_mat49',
			'vn_s_m1911',
			'vn_s_mk22',
			'vn_s_m1895',
			'vn_s_pm',
			'vn_s_mc10',
			'vn_s_mpu'

	];

	_suppressors =  _weaponAttachments arrayIntersect _suppressorList;
	
	private _hasSuppressor = FALSE;
	
	if (count _suppressors > 0) then {_hasSuppressor = TRUE}; 
	
	_hasSuppressor
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	