#define BLUFOR_SL rhsgref_cdf_b_reg_squadleader
#define BLUFOR_TL rhsgref_cdf_b_reg_squadleader
#define BLUFOR_GRENADIER rhsgref_cdf_b_reg_grenadier
#define BLUFOR_AT_LIGHT rhsgref_cdf_b_reg_rifleman_rpg75
#define BLUFOR_AT_HEAVY rhsgref_cdf_b_reg_grenadier_rpg
#define BLUFOR_RIFLEMAN rhsgref_cdf_b_reg_rifleman_aks74
#define BLUFOR_MEDIC rhsgref_cdf_b_reg_medic
#define BLUFOR_AUTORIFLEMAN b_afougf_mg_m240
#define BLUFOR_AA rhsgref_cdf_b_reg_arifleman_rpk

#define BLUFOR_SPECOPS_TL rhsgref_cdf_b_para_squadleader
#define BLUFOR_SPECOPS_RIFLEMAN rhsgref_cdf_b_para_rifleman
#define BLUFOR_SPECOPS_SNIPER rhsgref_cdf_b_para_marksman
#define BLUFOR_SPECOPS_SNIPER_ASSISTANT rhsgref_cdf_b_reg_medic

#define BLUFOR_MOTORIZED rhsgref_cdf_b_reg_uaz
#define BLUFOR_MOTORIZED_HMG rhsgref_cdf_b_reg_uaz_dshkm
#define BLUFOR_MOTORIZED_GMG rhsgref_cdf_b_reg_uaz_ags

#define BLUFOR_MECHANIZED rhsgref_cdf_b_btr80
#define BLUFOR_MECHANIZED_HEAVY rhsgref_cdf_b_bmp2d

#define BLUFOR_ARMORED rhsgref_cdf_b_t72bb_tv

class CfgGroups
{
	class West
	{
		name = $STR_A3_CfgGroups_West0;
		side = 1;
		class BLU_F
		{
			name = $STR_A3_CfgGroups_West_BLU_F0;
			class Infantry
			{
				name = $STR_A3_CfgGroups_West_BLU_F_Infantry0;
				// class BLUFOR_Infantry_04
				// {
				// 	name = $str_a3_cfggroups_west_blu_f_infantry_bus_reconteam0;
				// 	side = 1;
				// 	faction = BLU_F;
				// 	class Unit0
				// 	{
				// 		side = 1;
				// 		vehicle = BLUFOR_SPECOPS_TL;
				// 		rank = "SERGEANT";
				// 	};
				// 	class Unit1
				// 	{
				// 		side = 1;
				// 		vehicle = BLUFOR_SPECOPS_RIFLEMAN;
				// 		rank = "CORPORAL";
				// 	};
				// 	class Unit2
				// 	{
				// 		side = 1;
				// 		vehicle = BLUFOR_SPECOPS_SNIPER_ASSISTANT;
				// 		rank = "PRIVATE";
				// 	};
				// 	class Unit3
				// 	{
				// 		side = 1;
				// 		vehicle = BLUFOR_SPECOPS_SNIPER;
				// 		rank = "PRIVATE";
				// 	};
				// };
				class BLUFOR_Infantry_08
				{
					name = $str_a3_cfggroups_west_blu_f_infantry_bus_infsquad0;
					side = 1;
					faction = BLU_F;
					class Unit0
					{
						side = 1;
						vehicle = BLUFOR_SL;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 1;
						vehicle = BLUFOR_TL;
						rank = "SERGEANT";
					};
					class Unit2
					{
						side = 1;
						vehicle = BLUFOR_GRENADIER;
						rank = "CORPORAL";
					};
					class Unit3
					{
						side = 1;
						vehicle = BLUFOR_AT_LIGHT;
						rank = "PRIVATE";
					};
					class Unit4
					{
						side = 1;
						vehicle = BLUFOR_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit5
					{
						side = 1;
						vehicle = BLUFOR_MEDIC;
						rank = "CORPORAL";
					};
					class Unit6
					{
						side = 1;
						vehicle = BLUFOR_AUTORIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit7
					{
						side = 1;
						vehicle = BLUFOR_AUTORIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class BLUFOR_Infantry_16
				{
					name = $str_a3_cfggroups_west_blu_f_infantry_bus_infsquad0;
					side = 1;
					faction = BLU_F;
					class Unit0
					{
						side = 1;
						vehicle = BLUFOR_SL;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 1;
						vehicle = BLUFOR_TL;
						rank = "SERGEANT";
					};
					class Unit2
					{
						side = 1;
						vehicle = BLUFOR_GRENADIER;
						rank = "CORPORAL";
					};
					class Unit3
					{
						side = 1;
						vehicle = BLUFOR_AUTORIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit4
					{
						side = 1;
						vehicle = BLUFOR_AUTORIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit5
					{
						side = 1;
						vehicle = BLUFOR_AT_LIGHT;
						rank = "CORPORAL";
					};
					class Unit6
					{
						side = 1;
						vehicle = BLUFOR_MEDIC;
						rank = "PRIVATE";
					};
					class Unit7
					{
						side = 1;
						vehicle = BLUFOR_AUTORIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit8
					{
						side = 1;
						vehicle = BLUFOR_GRENADIER;
						rank = "CORPORAL";
					};
					class Unit9
					{
						side = 1;
						vehicle = BLUFOR_AUTORIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit10
					{
						side = 1;
						vehicle = BLUFOR_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit11
					{
						side = 1;
						vehicle = BLUFOR_AT_LIGHT;
						rank = "CORPORAL";
					};
					class Unit12
					{
						side = 1;
						vehicle = BLUFOR_MEDIC;
						rank = "PRIVATE";
					};
					class Unit13
					{
						side = 1;
						vehicle = BLUFOR_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit14
					{
						side = 1;
						vehicle = BLUFOR_AT_HEAVY;
						rank = "CORPORAL";
					};
					class Unit15
					{
						side = 1;
						vehicle = BLUFOR_AT_HEAVY;
						rank = "PRIVATE";
					};
				};
				class BLUFOR_Infantry_AT
				{
					name = $STR_A3_CfgGroups_West_BLU_F_Infantry_BUS_InfTeam_AT0;
					side = 1;
					faction = BLU_F;
					class Unit0
					{
						side = 1;
						vehicle = BLUFOR_TL;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 1;
						vehicle = BLUFOR_AT_HEAVY;
						rank = "SERGEANT";
					};
					class Unit2
					{
						side = 1;
						vehicle = BLUFOR_AT_HEAVY;
						rank = "PRIVATE";
					};
					class Unit3
					{
						side = 1;
						vehicle = BLUFOR_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				// class BLUFOR_Infantry_AA
				// {
				// 	name = $str_a3_cfggroups_west_blu_f_infantry_bus_infteam_aa0;
				// 	side = 1;
				// 	faction = BLU_F;
				// 	class Unit0
				// 	{
				// 		side = 1;
				// 		vehicle = BLUFOR_TL;
				// 		rank = "SERGEANT";
				// 	};
				// 	class Unit1
				// 	{
				// 		side = 1;
				// 		vehicle = BLUFOR_AA;
				// 		rank = "SERGEANT";
				// 	};
				// 	class Unit2
				// 	{
				// 		side = 1;
				// 		vehicle = BLUFOR_AA;
				// 		rank = "PRIVATE";
				// 	};
				// 	class Unit3
				// 	{
				// 		side = 1;
				// 		vehicle = BLUFOR_RIFLEMAN;
				// 		rank = "PRIVATE";
				// 	};
				// };
			};
			class Motorized
			{
				name = $STR_A3_CfgGroups_West_BLU_F_Motorized0;
				class BLUFOR_Motorized_AT
				{
					name = $str_a3_cfggroups_west_blu_f_motorized_bus_motinf_at0;
					side = 1;
					faction = BLU_F;
					class Unit0
					{
						side = 1;
						vehicle = BLUFOR_MOTORIZED;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 1;
						vehicle = BLUFOR_AT_HEAVY;
						rank = "CORPORAL";
					};
					class Unit2
					{
						side = 1;
						vehicle = BLUFOR_AT_HEAVY;
						rank = "CORPORAL";
					};
					class Unit3
					{
						side = 1;
						vehicle = BLUFOR_AUTORIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class BLUFOR_Motorized_GMG
				{
					name = $str_a3_cfggroups_west_blu_f_motorized_bus_motinf_team0;
					side = 1;
					faction = BLU_F;
					class Unit0
					{
						side = 1;
						vehicle = BLUFOR_MOTORIZED_GMG;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 1;
						vehicle = BLUFOR_RIFLEMAN;
						rank = "CORPORAL";
					};
					class Unit2
					{
						side = 1;
						vehicle = BLUFOR_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class BLUFOR_Motorized_HMG
				{
					name = $str_a3_cfggroups_west_blu_f_motorized_bus_motinf_team0;
					side = 1;
					faction = BLU_F;
					class Unit0
					{
						side = 1;
						vehicle = BLUFOR_MOTORIZED_HMG;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 1;
						vehicle = BLUFOR_RIFLEMAN;
						rank = "CORPORAL";
					};
					class Unit2
					{
						side = 1;
						vehicle = BLUFOR_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
			};
			class Mechanized
			{
				name = $str_a3_cfggroups_west_blu_f_mechanized0;
				class BLUFOR_Mechanized_Light
				{
					name = $str_a3_cfggroups_west_blu_f_mechanized_bus_mechinfsquad0;
					side = 1;
					faction = BLU_F;
					class Unit0
					{
						side = 1;
						vehicle = BLUFOR_MECHANIZED;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 1;
						vehicle = BLUFOR_SL;
						rank = "SERGEANT";
					};
					class Unit2
					{
						side = 1;
						vehicle = BLUFOR_TL;
						rank = "SERGEANT";
					};
					class Unit3
					{
						side = 1;
						vehicle = BLUFOR_GRENADIER;
						rank = "CORPORAL";
					};
					class Unit4
					{
						side = 1;
						vehicle = BLUFOR_AUTORIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit5
					{
						side = 1;
						vehicle = BLUFOR_AUTORIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit6
					{
						side = 1;
						vehicle = BLUFOR_AT_LIGHT;
						rank = "CORPORAL";
					};
					class Unit7
					{
						side = 1;
						vehicle = BLUFOR_MEDIC;
						rank = "PRIVATE";
					};
					class Unit8
					{
						side = 1;
						vehicle = BLUFOR_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class BLUFOR_Mechanized_Heavy
				{
					name = $str_a3_cfggroups_west_blu_f_mechanized_bus_mechinfsquad0;
					side = 1;
					faction = BLU_F;
					class Unit0
					{
						side = 1;
						vehicle = BLUFOR_MECHANIZED_HEAVY;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 1;
						vehicle = BLUFOR_SL;
						rank = "SERGEANT";
					};
					class Unit2
					{
						side = 1;
						vehicle = BLUFOR_TL;
						rank = "SERGEANT";
					};
					class Unit3
					{
						side = 1;
						vehicle = BLUFOR_GRENADIER;
						rank = "CORPORAL";
					};
					class Unit4
					{
						side = 1;
						vehicle = BLUFOR_AUTORIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit5
					{
						side = 1;
						vehicle = BLUFOR_AUTORIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit6
					{
						side = 1;
						vehicle = BLUFOR_AT_LIGHT;
						rank = "CORPORAL";
					};
					class Unit7
					{
						side = 1;
						vehicle = BLUFOR_MEDIC;
						rank = "PRIVATE";
					};
					class Unit8
					{
						side = 1;
						vehicle = BLUFOR_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
			};
			class Armored
			{
				class BLUFOR_Armored_Default
				{
					name = "Armored";
					side = 1;
					faction = BLU_F;
					class Unit0
					{
						side = 1;
						vehicle = BLUFOR_ARMORED;
						rank = "SERGEANT";
					};
				};
			};
		};
	};
	class East
	{
		name = $STR_A3_CfgGroups_East0;
		side = 0;
		class OPF_F
		{
			name = $STR_A3_CfgGroups_East_OPF_F0;
			class Infantry
			{
				name = $STR_A3_CfgGroups_West_BLU_F_Infantry0;
				class OPFOR_Infantry_04
				{
					name = $str_a3_cfggroups_west_blu_f_infantry_bus_reconteam0;
					side = 0;
					faction = OPF_F;
					class Unit0
					{
						side = 0;
						vehicle = rhs_vmf_recon_sergeant;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 0;
						vehicle = rhs_vmf_recon_medic;
						rank = "CORPORAL";
					};
					class Unit2
					{
						side = 0;
						vehicle = rhs_vmf_recon_rifleman_scout_akm;
						rank = "PRIVATE";
					};
					class Unit3
					{
						side = 0;
						vehicle = rhs_vmf_recon_marksman;
						rank = "PRIVATE";
					};
				};
				class OPFOR_Infantry_08
				{
					name = $str_a3_cfggroups_west_blu_f_infantry_bus_infsquad0;
					side = 0;
					faction = OPF_F;
					class Unit0
					{
						side = 0;
						vehicle = rhs_vdv_sergeant;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 0;
						vehicle = rhs_vdv_efreitor;
						rank = "SERGEANT";
					};
					class Unit2
					{
						side = 0;
						vehicle = rhs_vdv_grenadier;
						rank = "CORPORAL";
					};
					class Unit3
					{
						side = 0;
						vehicle = rhs_vdv_LAT;
						rank = "PRIVATE";
					};
					class Unit4
					{
						side = 0;
						vehicle = rhs_vdv_machinegunner;
						rank = "PRIVATE";
					};
					class Unit5
					{
						side = 0;
						vehicle = rhs_vdv_medic;
						rank = "PRIVATE";
					};
					class Unit6
					{
						side = 0;
						vehicle = rhs_vdv_machinegunner;
						rank = "PRIVATE";
					};
					class Unit7
					{
						side = 0;
						vehicle = rhs_vdv_rifleman;
						rank = "PRIVATE";
					};
				};
				class OPFOR_Infantry_16
				{
					name = $str_a3_cfggroups_west_blu_f_infantry_bus_infsquad0;
					side = 0;
					faction = OPF_F;
					class Unit0
					{
						side = 0;
						vehicle = rhs_vdv_sergeant;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 0;
						vehicle = rhs_vdv_efreitor;
						rank = "SERGEANT";
					};
					class Unit2
					{
						side = 0;
						vehicle = rhs_vdv_grenadier;
						rank = "CORPORAL";
					};
					class Unit3
					{
						side = 0;
						vehicle = rhs_vdv_machinegunner;
						rank = "PRIVATE";
					};
					class Unit4
					{
						side = 0;
						vehicle = rhs_vdv_machinegunner;
						rank = "PRIVATE";
					};
					class Unit5
					{
						side = 0;
						vehicle = rhs_vdv_medic;
						rank = "PRIVATE";
					};
					class Unit6
					{
						side = 0;
						vehicle = rhs_vdv_grenadier;
						rank = "CORPORAL";
					};
					class Unit7
					{
						side = 0;
						vehicle = rhs_vdv_machinegunner;
						rank = "PRIVATE";
					};
					class Unit8
					{
						side = 0;
						vehicle = rhs_vdv_machinegunner;
						rank = "PRIVATE";
					};
					class Unit9
					{
						side = 0;
						vehicle = rhs_vdv_medic;
						rank = "PRIVATE";
					};
					class Unit10
					{
						side = 0;
						vehicle = rhs_vdv_rifleman;
						rank = "PRIVATE";
					};
					class Unit11
					{
						side = 0;
						vehicle = rhs_vdv_LAT;
						rank = "CORPORAL";
					};
					class Unit12
					{
						side = 0;
						vehicle = rhs_vdv_LAT;
						rank = "PRIVATE";
					};
					class Unit13
					{
						side = 0;
						vehicle = rhs_vdv_rifleman;
						rank = "PRIVATE";
					};
					class Unit14
					{
						side = 0;
						vehicle = rhs_vdv_LAT;
						rank = "PRIVATE";
					};
					class Unit15
					{
						side = 0;
						vehicle = rhs_vdv_LAT;
						rank = "PRIVATE";
					};
				};
				class OPFOR_Infantry_AT
				{
					name = $STR_A3_CfgGroups_West_BLU_F_Infantry_BUS_InfTeam_AT0;
					side = 0;
					faction = OPF_F;
					class Unit0
					{
						side = 0;
						vehicle = rhs_vdv_efreitor;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 0;
						vehicle = rhs_vdv_at;
						rank = "SERGEANT";
					};
					class Unit2
					{
						side = 0;
						vehicle = rhs_vdv_at;
						rank = "PRIVATE";
					};
					class Unit3
					{
						side = 0;
						vehicle = rhs_vdv_rifleman;
						rank = "PRIVATE";
					};
				};
				class OPFOR_Infantry_AA
				{
					name = $str_a3_cfggroups_west_blu_f_infantry_bus_infteam_aa0;
					side = 0;
					faction = OPF_F;
					class Unit0
					{
						side = 0;
						vehicle = rhs_vdv_efreitor;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 0;
						vehicle = rhs_vdv_aa;
						rank = "SERGEANT";
					};
					class Unit2
					{
						side = 0;
						vehicle = rhs_vdv_aa;
						rank = "PRIVATE";
					};
					class Unit3
					{
						side = 0;
						vehicle = rhs_vdv_rifleman;
						rank = "PRIVATE";
					};
				};
			};
			class Motorized
			{
				name = $STR_A3_cfggroups_East_OPF_F_Motorized_MTP0;
				class OPFOR_Motorized_AA
				{
					name = $str_a3_cfggroups_east_opf_f_motorized_mtp_oia_motinf_at0;
					side = 0;
					faction = OPF_F;
					class Unit0
					{
						side = 0;
						vehicle = rhs_tigr_vdv;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 0;
						vehicle = rhs_vdv_aa;
						rank = "CORPORAL";
					};
					class Unit2
					{
						side = 0;
						vehicle = rhs_vdv_aa;
						rank = "PRIVATE";
					};
					class Unit3
					{
						side = 0;
						vehicle = rhs_vdv_machinegunner;
						rank = "PRIVATE";
					};
				};
				class OPFOR_Motorized_AT
				{
					name = $str_a3_cfggroups_east_opf_f_motorized_mtp_oia_motinf_at0;
					side = 0;
					faction = OPF_F;
					class Unit0
					{
						side = 0;
						vehicle = rhs_tigr_vdv;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 0;
						vehicle = rhs_vdv_at;
						rank = "CORPORAL";
					};
					class Unit2
					{
						side = 0;
						vehicle = rhs_vdv_at;
						rank = "PRIVATE";
					};
					class Unit3
					{
						side = 0;
						vehicle = rhs_vdv_machinegunner;
						rank = "PRIVATE";
					};
				};
				class OPFOR_Motorized_HMG
				{
					name = $str_a3_cfggroups_east_opf_f_motorized_mtp_oia_motinfteam0;
					side = 0;
					faction = OPF_F;
					class Unit0
					{
						side = 0;
						vehicle = rhs_tigr_m_vdv;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 0;
						vehicle = rhs_vdv_rifleman;
						rank = "CORPORAL";
					};
					class Unit2
					{
						side = 0;
						vehicle = rhs_vdv_rifleman;
						rank = "PRIVATE";
					};
				};
				class OPFOR_Motorized_GMG
				{
					name = $str_a3_cfggroups_east_opf_f_motorized_mtp_oia_motinfteam0;
					side = 0;
					faction = OPF_F;
					class Unit0
					{
						side = 0;
						vehicle = rhs_tigr_sts_vdv;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 0;
						vehicle = rhs_vdv_rifleman;
						rank = "CORPORAL";
					};
					class Unit2
					{
						side = 0;
						vehicle = rhs_vdv_rifleman;
						rank = "PRIVATE";
					};
				};
			};
			class Mechanized
			{
				name = $str_a3_cfggroups_east_opf_f_mechanized0;
				class OPFOR_Mechanized_Light
				{
					name = $STR_A3_cfggroups_West_BLU_F_Mechanized_BUS_MechInfSquad0;
					side = 0;
					faction = OPF_F;
					class Unit0
					{
						side = 0;
						vehicle = rhs_btr80_vdv;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 0;
						vehicle = rhs_vdv_sergeant;
						rank = "SERGEANT";
					};
					class Unit2
					{
						side = 0;
						vehicle = rhs_vdv_efreitor;
						rank = "SERGEANT";
					};
					class Unit3
					{
						side = 0;
						vehicle = rhs_vdv_grenadier;
						rank = "CORPORAL";
					};
					class Unit4
					{
						side = 0;
						vehicle = rhs_vdv_machinegunner;
						rank = "PRIVATE";
					};
					class Unit5
					{
						side = 0;
						vehicle = rhs_vdv_machinegunner;
						rank = "PRIVATE";
					};
					class Unit6
					{
						side = 0;
						vehicle = rhs_vdv_LAT;
						rank = "CORPORAL";
					};
					class Unit7
					{
						side = 0;
						vehicle = rhs_vdv_medic;
						rank = "PRIVATE";
					};
					class Unit8
					{
						side = 0;
						vehicle = rhs_vdv_rifleman;
						rank = "PRIVATE";
					};
				};
				class OPFOR_Mechanized_Heavy
				{
					name = $STR_A3_cfggroups_West_BLU_F_Mechanized_BUS_MechInfSquad0;
					side = 0;
					faction = OPF_F;
					class Unit0
					{
						side = 0;
						vehicle = rhs_bmp2d_vdv;
						rank = "SERGEANT";
					};
					class Unit1
					{
						side = 0;
						vehicle = rhs_vdv_sergeant;
						rank = "SERGEANT";
					};
					class Unit2
					{
						side = 0;
						vehicle = rhs_vdv_efreitor;
						rank = "SERGEANT";
					};
					class Unit3
					{
						side = 0;
						vehicle = rhs_vdv_grenadier;
						rank = "CORPORAL";
					};
					class Unit4
					{
						side = 0;
						vehicle = rhs_vdv_machinegunner;
						rank = "PRIVATE";
					};
					class Unit5
					{
						side = 0;
						vehicle = rhs_vdv_machinegunner;
						rank = "PRIVATE";
					};
					class Unit6
					{
						side = 0;
						vehicle = rhs_vdv_LAT;
						rank = "CORPORAL";
					};
					class Unit7
					{
						side = 0;
						vehicle = rhs_vdv_medic;
						rank = "PRIVATE";
					};
					class Unit8
					{
						side = 0;
						vehicle = rhs_vdv_rifleman;
						rank = "PRIVATE";
					};
				};
			};
			class Armored
			{
				class OPFOR_Armored
				{
					name = "Armored";
					side = 1;
					faction = OPF_F;
					class Unit0
					{
						side = 0;
						vehicle = rhs_t72be_tv;
						rank = "SERGEANT";
					};
				};
				class OPFOR_AA
				{
					name = "AA";
					side = 1;
					faction = OPF_F;
					class Unit0
					{
						side = 0;
						vehicle = rhs_zsu234_aa;
						rank = "SERGEANT";
					};
				};
			};
		};
	};
};
