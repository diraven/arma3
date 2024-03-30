class BEW
{

	tag = "BEW";
	
	class setup
	
	{
		
		file = "functions\setup";
		
		class clearAllVariables {preInit = 1};
		
	};

	
	class Faction_Setup

		{

			file = "FactionSetup";
			
			class factionData {preInit = 1};
			class factionSetupMain {};
			class detectMods {preinit = 1};
			class lists {};
			class defineMapCamo {};
			class missionSwitch {};
			class forceFactionByParameters {};
			class switchFactionsActions {};
			class sideRelations {};

		};
	

	class Vanilla_Base_Translation_Lists

		{

			file = "functions\translation\Vanilla\Base";

			class Nato_Base_TransList {preInit = 1};
			class Nato_T_Base_TransList {preInit = 1};
			class Nato_W_Base_TransList {preInit = 1};
			
			class CTRG_Base_TransList {preInit = 1};
			class CTRG_D_Base_TransList {preInit = 1};
			
			class AAF_Base_TransList {preInit = 1};
			class FIA_Base_TransList {preInit = 1};
			class LDF_Base_TransList {preInit = 1};
			class MDF_Base_TransList {preInit = 1};

			class CSAT_Base_TransList {preInit = 1};
			class CSAT_T_Base_TransList {preInit = 1};
			class OPF_FIA_Base_TransList {preInit = 1};
			class SPETSNAZ_Base_TransList {preInit = 1};
			class SYNDIKAT_Base_TransList {preInit = 1};

		};
		
		
	class Vanilla_Translation_Lists

		{

			file = "functions\translation\Vanilla";

			class Nato_TransList {preInit = 1};
			class Nato_T_TransList {preInit = 1};
			class Nato_W_TransList {preInit = 1};			
			
			class CTRG_TransList {preInit = 1};
			class CTRG_D_TransList {preInit = 1};
			
			class AAF_TransList {preInit = 1};
			class FIA_TransList {preInit = 1};		
			class LDF_TransList {preInit = 1};		
			class MDF_TransList {preInit = 1};
			
			class CSAT_TransList {preInit = 1};
			class CSAT_T_TransList {preInit = 1};
			class OPF_FIA_TransList {preInit = 1};
			class SPETSNAZ_TransList {preInit = 1};
			class SYNDIKAT_TransList {preInit = 1};
			
		};
		
		
	class WS_Translation_Lists

		{

			file = "functions\translation\WS";
			
			class Nato_D_TransList {preInit = 1};
			class SFIA_TransList {preInit = 1};
			class OPF_Tura_TransList {preInit = 1};
			class ION_TransList {preInit = 1};
			
		};
		
		
	class Zombies_Translation_Lists

		{

			file = "functions\translation\Zombies";

			class Zombies_TransList {preInit = 1};
			class Survivors_TransList {preInit = 1};
			class Survivors_OPF_TransList {preInit = 1};
			
		};
		
		
	class Aegis_Translation_Lists

		{

			file = "functions\translation\Aegis";

			class Aegis_AAF_TransList {preInit = 1};
			class Aegis_BAF_T_TransList {preInit = 1};
			class Aegis_BAF_TransList {preInit = 1};
			class Aegis_BAF_W_TransList {preInit = 1};
			class Aegis_Bundeswehr_TransList {preInit = 1};
			class Aegis_China_TransList {preInit = 1};
			class Aegis_Iran_TransList {preInit = 1};
			class Aegis_Israel_TransList {preInit = 1};
			class Aegis_LDF_TransList {preInit = 1};
			class Aegis_Russia_TransList {preInit = 1};
			class Aegis_Russia_W_TransList {preInit = 1};
			class Aegis_US_T_TransList {preInit = 1};
			class Aegis_US_TransList {preInit = 1};
			class Aegis_US_W_TransList {preInit = 1};

		};


	class RHS_Translation_Lists

		{

			file = "functions\translation\RHS";

			class USArmyD_TransList {preInit = 1};
			class USArmyW_TransList {preInit = 1};
			class UsmcD_TransList {preInit = 1};
			class UsmcW_TransList {preInit = 1};
			class USNavy_TransList {preInit = 1};
			class SOCOM_D_TransList {preInit = 1};
			class SOCOM_W_TransList {preInit = 1};
			class CDF_TransList {preInit = 1};
			class CHDKZ_TransList {preInit = 1};
			class HIDF_TransList {preInit = 1};
			class VDV_TransList {preInit = 1};
			class VDV_D_TransList {preInit = 1};
			class VMF_TransList {preInit = 1};
			class SAF_TransList {preInit = 1};
			class OPF_SAF_TransList {preInit = 1};

		};
		
		
	class UKR_Translation_Lists

		{

			file = "functions\translation\UKR";

			class UKRArmy_TransList {preInit = 1};

		};
		
		
	class BF4_Translation_Lists

		{

			file = "functions\translation\BF4";
			
			class BF4_USMC_TransList {preInit = 1};
			class BF4_Russia_TransList {preInit = 1};

		};


	class CUP_Translation_Lists

		{

			file = "functions\translation\CUP";

			class CUP_USARMYD_TransList {preInit = 1};
			class CUP_USARMYW_TransList {preInit = 1};
			class CUP_SOCOM_TransList {preInit = 1};
			class CUP_USMCD_TransList {preInit = 1};
			class CUP_USMCW_TransList {preInit = 1};
			class CUP_BAFMTP_TransList {preInit = 1};
			class CUP_BAFD_TransList {preInit = 1};
			class CUP_GERMANYD_TransList {preInit = 1};
			class CUP_GERMANYW_TransList {preInit = 1};
			class CUP_CDFW_TransList {preInit = 1};
			class CUP_CDFD_TransList {preInit = 1};
			class CUP_HIL_TransList {preInit = 1};
			class CUP_CZArmyD_TransList {preInit = 1};
			class CUP_CZArmyW_TransList {preInit = 1};
			class CUP_ION_TransList {preInit = 1};
			class CUP_RUS_TransList {preInit = 1};
			class CUP_RUS_Spetsnaz_TransList {preInit = 1};
			class CUP_CHDKZ_TransList {preInit = 1};

		};


	class GM_Translation_Lists

		{

			file = "functions\translation\GM";

			class GM_WESTGERMANY_TransList {preInit = 1};
			class GM_WESTGERMANY_D_TransList {preInit = 1};
			class GM_EASTGERMANY_TransList {preInit = 1};
			class GM_POLAND_TransList {preInit = 1};
			class GM_DENMARK_TransList {preInit = 1};

		};
		
	class VN_Translation_Lists

		{

			file = "functions\translation\VN";

			class VN_USArmy_TransList {preInit = 1};
			class VN_AusArmy_TransList {preInit = 1};
			class VN_AusSAS_TransList {preInit = 1};
			class VN_USMC_TransList {preInit = 1};
			class VN_SEALS_TransList {preInit = 1};
			class VN_MACV_TransList {preInit = 1};
			class VN_ARVN_TransList {preInit = 1};
			class VN_PAVN_TransList {preInit = 1};
			class VN_PL_TransList {preInit = 1};
			class VN_VC_TransList {preInit = 1};

		};


	class CSLA_Translation_Lists

		{

			file = "functions\translation\CSLA";

			class CSLA_TransList {preInit = 1};
			class CSLA_USMC_TransList {preInit = 1};

		};


	class 3CB_Translation_Lists

		{

			file = "functions\translation\3CB";

			class 3cb_D_TransList {preInit = 1};
			class 3cb_MTP_TransList {preInit = 1};
			class 3cb_ColdWarBAF_TransList {preInit = 1};
			class 3cb_ColdWarBAF_D_TransList {preInit = 1};
			class 3cb_USArmyLate_TransList {preInit = 1};
			class 3cb_USNavyLate_TransList {preInit = 1};
			class 3cb_USArmyLate_D_TransList {preInit = 1};
			class 3cb_USNavyLate_D_TransList {preInit = 1};			
			class 3cb_VDVLate_TransList {preInit = 1};

		};


	class ProjectUncut_Translation_Lists

		{

			file = "functions\translation\ProjectUncut";

			class AUSArmy_TransList {preInit = 1};

		};


	class NZDF_Translation_Lists

		{

			file = "functions\translation\NZDF";

			class NZArmy_TransList {preInit = 1};

		};


	class BWMOD_Translation_Lists

		{

			file = "functions\translation\BWMOD";

			class BWFLEK_TransList {preInit = 1};
			class BWTROP_TransList {preInit = 1};

		};


	class FFAA_Translation_Lists

		{

			file = "functions\translation\FFAA";

			class FFAA_TransList {preInit = 1};

		};


	class ROARS_Translation_Lists

		{

			file = "functions\translation\ROARS";

			class ROARS_TransList {preInit = 1};

		};


	class AMF_R3F_Translation_Lists

		{

			file = "functions\translation\AMF_R3F";

			class FRENCH_TransList {preInit = 1};

		};


	class TFC_CAF_Translation_Lists

		{

			file = "functions\translation\TFC-CAF";

			class CAFT_TransList {preInit = 1};
			class CAFT_D_TransList {preInit = 1};

		};


	class Pedagne_Translation_Lists

		{

			file = "functions\translation\Pedagne";

			class ITALYArmy_TransList {preInit = 1};

		};


	class SFP_Translation_Lists

		{

			file = "functions\translation\SFP";

			class SWEDEArmy_TransList {preInit = 1};
			class SWEDEArmy80_TransList {preInit = 1};
			class FINLANDArmy_TransList {preInit = 1};

		};


	class ACR_Translation_Lists

		{

			file = "functions\translation\ACR";

			class ACR_W_TransList {preInit = 1};
			class ACR_D_TransList {preInit = 1};

		};


	class JSDF_Translation_Lists

		{

			file = "functions\translation\JSDF";

			class JSDF_TransList {preInit = 1};
			class JSDF_D_TransList {preInit = 1};

		};


	class WW2_Translation_Lists

		{

			file = "functions\translation\WW2";

			class WW2_USArmy_TransList {preInit = 1};
			class WW2_USArmy_D_TransList {preInit = 1};
			class WW2_USArmy_W_TransList {preInit = 1};
			class WW2_USAirborne_TransList {preInit = 1};
			class WW2_USNavy_TransList {preInit = 1};
			class WW2_USMarauders_TransList {preInit = 1};
			class WW2_USRangers_TransList {preInit = 1};
			class WW2_Heer_TransList {preInit = 1};
			class WW2_FSJ_TransList {preInit = 1};
			class WW2_FSJ_DAK_TransList {preInit = 1};
			class WW2_Heer_W_TransList {preInit = 1};
			class WW2_PanzerLehr_TransList {preInit = 1};
			class WW2_DAK_TransList {preInit = 1};
			class WW2_SS_TransList {preInit = 1};
			class WW2_British_TransList {preInit = 1};
			class WW2_British_SEAC_TransList {preInit = 1};
			class WW2_British_W_TransList {preInit = 1};
			class WW2_BritAirborne_TransList {preInit = 1};
			class WW2_Commandos_TransList {preInit = 1};
			class WW2_SAS_TransList {preInit = 1};
			class WW2_DesertRats_TransList {preInit = 1};
			class WW2_CAN_TransList {preInit = 1};
			class WW2_AUS_TransList {preInit = 1};
			class WW2_Soviet_TransList {preInit = 1};
			class WW2_Soviet_W_TransList {preInit = 1};
			class WW2_Japan_TransList {preInit = 1};

		};


	class OPTRE_Translation_Lists

		{

			file = "functions\translation\OPTRE";

			class OPTRE_COVENANT_TransList {preInit = 1};
			class OPTRE_JACKAL_TransList {preInit = 1};
			class OPTRE_FLOOD_TransList {preInit = 1};
			class OPTRE_INSURRECTION_TransList {preInit = 1};
			class OPTRE_UNSCDF_TransList {preInit = 1};
			class OPTRE_UNSCDF_D_TransList {preInit = 1};
			class OPTRE_UNSCDF_W_TransList {preInit = 1};
			class OPTRE_ODST_TransList {preInit = 1};

		};
		
		
	class OPPOSITION_SW_Translation_Lists

		{

			file = "functions\translation\OPPOSITION_SW";

			class OPPOSITION_SW_RA_TransList {preInit = 1};
			class OPPOSITION_SW_GE_TransList {preInit = 1};

		};
		
		
	class 3AS_Translation_Lists

		{

			file = "functions\translation\3AS";

			class 3AS_GAR_TransList {preInit = 1};
			
		};
		
		
	class IAF_Translation_Lists

		{

			file = "functions\translation\IAF";

			class AJA_TransList {preInit = 1};

		};
		
		
	class KPA_Translation_Lists

		{

			file = "functions\translation\KPA";

			class KPA_TransList {preInit = 1};

		};
		
		
	class Legion_Translation_Lists

		{

			file = "functions\translation\Legion";

			class RomanLegion_TransList {preInit = 1};

		};


	class Basic_Gear_Lists

		{
			file = "functions\arsenal\gearLists\Basic";

			class Basic_ItemList {preInit = 1};
			class VN_Basic_ItemList {preInit = 1};
			class ColdWar_Basic_ItemList {preInit = 1};
			class WW2_Basic_ItemList {preInit = 1};
			class OPTRE_Basic_ItemList {preInit = 1};
			class Tier1_Basic_ItemList {preInit = 1};
			class SMA_Basic_ItemList {preInit = 1};
			class NiArms_Basic_ItemList {preInit = 1};

		};
		
		
	class Vanilla_Base_Gear_Lists

		{
			file = "functions\arsenal\gearLists\Vanilla\Base";

			class CSAT_Base_WeaponList {preInit = 1};
			class CSAT_Base_ItemList {preInit = 1};
			
			class SPETSNAZ_Base_WeaponList {preInit = 1};
			class SPETSNAZ_Base_ItemList {preInit = 1};
			
			class CSAT_T_Base_WeaponList {preInit = 1};
			class CSAT_T_Base_ItemList {preInit = 1};
			
			class AAF_Base_WeaponList {preInit = 1};
			class AAF_Base_ItemList {preInit = 1};
			
			class FIA_Base_WeaponList {preInit = 1};
			class FIA_Base_ItemList {preInit = 1};
			
			class OPF_FIA_Base_WeaponList {preInit = 1};
			class OPF_FIA_Base_ItemList {preInit = 1};

			class Nato_Base_WeaponList {preInit = 1};
			class Nato_Base_ItemList {preInit = 1};
			
			class Nato_T_Base_ItemList {preInit = 1};
			class Nato_T_Base_WeaponList {preInit = 1};
			
			class Nato_W_Base_ItemList {preInit = 1};
			class Nato_W_Base_WeaponList {preInit = 1};

			class CTRG_Base_WeaponList {preInit = 1};
			class CTRG_Base_ItemList {preInit = 1};
			
			class CTRG_D_Base_WeaponList {preInit = 1};			
			class CTRG_D_Base_ItemList {preInit = 1};

			class LDF_Base_WeaponList {preInit = 1};
			class LDF_Base_ItemList {preInit = 1};
			
			class MDF_Base_WeaponList {preInit = 1};
			class MDF_Base_ItemList {preInit = 1};
			
			class SYNDIKAT_Base_WeaponList {preInit = 1};	
			class SYNDIKAT_Base_ItemList {preInit = 1};

		};


	class Vanilla_Gear_Lists

		{
			file = "functions\arsenal\gearLists\Vanilla";

			class CSAT_WeaponList {preInit = 1};
			class CSAT_ItemList {preInit = 1};
			
			class SPETSNAZ_WeaponList {preInit = 1};
			class SPETSNAZ_ItemList {preInit = 1};
			
			class CSAT_T_WeaponList {preInit = 1};
			class CSAT_T_ItemList {preInit = 1};
			
			class AAF_WeaponList {preInit = 1};
			class AAF_ItemList {preInit = 1};
			
			class FIA_WeaponList {preInit = 1};
			class FIA_ItemList {preInit = 1};
			
			class OPF_FIA_WeaponList {preInit = 1};
			class OPF_FIA_ItemList {preInit = 1};

			class Nato_WeaponList {preInit = 1};
			class Nato_ItemList {preInit = 1};
			
			class Nato_T_ItemList {preInit = 1};
			class Nato_T_WeaponList {preInit = 1};
			
			class Nato_W_ItemList {preInit = 1};
			class Nato_W_WeaponList {preInit = 1};		

			class CTRG_WeaponList {preInit = 1};
			class CTRG_ItemList {preInit = 1};
			
			class CTRG_D_WeaponList {preInit = 1};			
			class CTRG_D_ItemList {preInit = 1};

			class LDF_WeaponList {preInit = 1};
			class LDF_ItemList {preInit = 1};
			
			class MDF_WeaponList {preInit = 1};
			class MDF_ItemList {preInit = 1};
			
			class SYNDIKAT_WeaponList {preInit = 1};	
			class SYNDIKAT_ItemList {preInit = 1};
			
		};
		
		
	class WS_Gear_Lists

		{
			file = "functions\arsenal\gearLists\WS";
			
			class Nato_D_ItemList {preInit = 1};
			class Nato_D_WeaponList {preInit = 1};
			
			class SFIA_WeaponList {preInit = 1};
			class SFIA_ItemList {preInit = 1};
			
			class OPF_Tura_WeaponList {preInit = 1};
			class OPF_Tura_ItemList {preInit = 1};
			
			class ION_WeaponList {preInit = 1};			
			class ION_ItemList {preInit = 1};
			
		};


	class Zombies_Gear_Lists

		{
			file = "functions\arsenal\gearLists\Zombies";
			
			class Zombies_WeaponList {preInit = 1};
			class Zombies_ItemList {preInit = 1};
			
			class Survivors_WeaponList {preInit = 1};
			class Survivors_ItemList {preInit = 1};
			
			class Survivors_OPF_WeaponList {preInit = 1};
			class Survivors_OPF_ItemList {preInit = 1};

		};
		
		
	class Aegis_Gear_Lists

		{
			file = "functions\arsenal\gearLists\Aegis";

			class Aegis_AAF_WeaponList {preInit = 1};
			class Aegis_BAF_T_WeaponList {preInit = 1};
			class Aegis_BAF_WeaponList {preInit = 1};
			class Aegis_BAF_W_WeaponList {preInit = 1};
			class Aegis_Bundeswehr_WeaponList {preInit = 1};
			class Aegis_China_WeaponList {preInit = 1};
			class Aegis_Iran_WeaponList {preInit = 1};
			class Aegis_Israel_WeaponList {preInit = 1};
			class Aegis_LDF_WeaponList {preInit = 1};
			class Aegis_Russia_WeaponList {preInit = 1};
			class Aegis_Russia_W_WeaponList {preInit = 1};
			class Aegis_US_T_WeaponList {preInit = 1};
			class Aegis_US_WeaponList {preInit = 1};
			class Aegis_US_W_WeaponList {preInit = 1};
			
			class Aegis_AAF_ItemList {preInit = 1};
			class Aegis_BAF_T_ItemList {preInit = 1};
			class Aegis_BAF_ItemList {preInit = 1};
			class Aegis_BAF_W_ItemList {preInit = 1};
			class Aegis_Bundeswehr_ItemList {preInit = 1};
			class Aegis_China_ItemList {preInit = 1};
			class Aegis_Iran_ItemList {preInit = 1};
			class Aegis_Israel_ItemList {preInit = 1};
			class Aegis_LDF_ItemList {preInit = 1};
			class Aegis_Russia_ItemList {preInit = 1};
			class Aegis_Russia_W_ItemList {preInit = 1};
			class Aegis_US_T_ItemList {preInit = 1};
			class Aegis_US_ItemList {preInit = 1};
			class Aegis_US_W_ItemList {preInit = 1};
			

		};


	class RHS_Gear_Lists

		{
			file = "functions\arsenal\gearLists\RHS";

			class USArmyD_WeaponList {preInit = 1};
			class USArmyW_WeaponList {preInit = 1};
			class USMCD_WeaponList {preInit = 1};
			class UsmcW_WeaponList {preInit = 1};
			class USNavy_WeaponList {preInit = 1};
			class VDV_WeaponList {preInit = 1};
			class VDV_D_WeaponList {preInit = 1};
			class VMF_WeaponList {preInit = 1};
			class SOCOM_D_WeaponList {preInit = 1};
			class SOCOM_W_WeaponList {preInit = 1};
			class CDF_WeaponList {preInit = 1};
			class CDF_ItemList {preInit = 1};
			class CHDKZ_WeaponList {preInit = 1};
			class CHDKZ_ItemList {preInit = 1};
			class HIDF_WeaponList {preInit = 1};
			class HIDF_ItemList {preInit = 1};
			class SAF_WeaponList {preInit = 1};
			class SAF_ItemList {preInit = 1};
			class OPF_SAF_WeaponList {preInit = 1};
			class OPF_SAF_ItemList {preInit = 1};
			class USArmyD_ItemList {preInit = 1};
			class USArmyW_ItemList {preInit = 1};
			class USMCD_ItemList {preInit = 1};
			class UsmcW_ItemList {preInit = 1};
			class USNavy_ItemList {preInit = 1};
			class SOCOM_D_ItemList {preInit = 1};
			class SOCOM_W_ItemList {preInit = 1};
			class VDV_ItemList {preInit = 1};
			class VDV_D_ItemList {preInit = 1};
			class VMF_ItemList {preInit = 1};

		};
		
		
	class UKR_Gear_Lists

		{
			file = "functions\arsenal\gearLists\UKR";

			class UKRArmy_ItemList {preInit = 1};
			class UKRArmy_WeaponList {preInit = 1};

		};
		
		
	class BF4_Gear_Lists

		{
			file = "functions\arsenal\gearLists\BF4";
			
			class BF4_USMC_WeaponList {preInit = 1};
			class BF4_USMC_ItemList {preInit = 1};
			
			class BF4_Russia_WeaponList {preInit = 1};
			class BF4_Russia_ItemList {preInit = 1};

		};


	class CUP_Gear_Lists

		{
			file = "functions\arsenal\gearLists\CUP";

			class CUP_USARMYD_WeaponList {preInit = 1};
			class CUP_USARMYW_WeaponList {preInit = 1};
			class CUP_SOCOM_WeaponList {preInit = 1};
			class CUP_USMCD_WeaponList {preInit = 1};
			class CUP_USMCW_WeaponList {preInit = 1};
			class CUP_BAFMTP_WeaponList {preInit = 1};
			class CUP_BAFD_WeaponList {preInit = 1};
			class CUP_GERMANYW_WeaponList {preInit = 1};
			class CUP_GERMANYD_WeaponList {preInit = 1};
			class CUP_CDFW_WeaponList {preInit = 1};
			class CUP_CDFD_WeaponList {preInit = 1};
			class CUP_RUS_WeaponList {preInit = 1};
			class CUP_RUS_Spetsnaz_WeaponList {preInit = 1};
			class CUP_HIL_WeaponList {preInit = 1};
			class CUP_CZArmyD_WeaponList {preInit = 1};
			class CUP_CZArmyW_WeaponList {preInit = 1};
			class CUP_ION_WeaponList {preInit = 1};
			class CUP_CHDKZ_WeaponList {preInit = 1};

			class CUP_USARMYD_ItemList {preInit = 1};
			class CUP_USARMYW_ItemList {preInit = 1};
			class CUP_SOCOM_ItemList {preInit = 1};
			class CUP_USMCD_ItemList {preInit = 1};
			class CUP_USMCW_ItemList {preInit = 1};
			class CUP_BAFMTP_ItemList {preInit = 1};
			class CUP_BAFD_ItemList {preInit = 1};
			class CUP_GERMANYW_ItemList {preInit = 1};
			class CUP_GERMANYD_ItemList {preInit = 1};
			class CUP_CDFW_ItemList {preInit = 1};
			class CUP_CDFD_ItemList {preInit = 1};
			class CUP_RUS_ItemList {preInit = 1};
			class CUP_RUS_Spetsnaz_ItemList {preInit = 1};
			class CUP_HIL_ItemList {preInit = 1};
			class CUP_CZArmyD_ItemList {preInit = 1};
			class CUP_CZArmyW_ItemList {preInit = 1};
			class CUP_ION_ItemList {preInit = 1};
			class CUP_CHDKZ_ItemList {preInit = 1};

		};


	class GM_Gear_Lists

		{
			file = "functions\arsenal\gearLists\GM";

			class GM_WESTGERMANY_WeaponList {preInit = 1};
			class GM_WESTGERMANY_D_WeaponList {preInit = 1};
			class GM_EASTGERMANY_WeaponList {preInit = 1};
			class GM_POLAND_WeaponList {preInit = 1};
			class GM_DENMARK_WeaponList {preInit = 1};

			class GM_WESTGERMANY_ItemList {preInit = 1};
			class GM_WESTGERMANY_D_ItemList {preInit = 1};
			class GM_EASTGERMANY_ItemList {preInit = 1};
			class GM_POLAND_ItemList {preInit = 1};
			class GM_DENMARK_ItemList {preInit = 1};

		};
		
		
	class VN_Gear_Lists

		{
			file = "functions\arsenal\gearLists\VN";

			class VN_USArmy_WeaponList {preInit = 1};
			class VN_AusArmy_WeaponList {preInit = 1};
			class VN_AusSAS_WeaponList {preInit = 1};
			class VN_USMC_WeaponList {preInit = 1};
			class VN_SEALS_WeaponList {preInit = 1};
			class VN_ARVN_WeaponList {preInit = 1};
			class VN_PAVN_WeaponList {preInit = 1};
			class VN_PL_WeaponList {preInit = 1};
			class VN_MACV_WeaponList {preInit = 1};
			class VN_VC_WeaponList {preInit = 1};

			class VN_USArmy_ItemList {preInit = 1};
			class VN_AusArmy_ItemList {preInit = 1};
			class VN_AusSAS_ItemList {preInit = 1};
			class VN_USMC_ItemList {preInit = 1};
			class VN_SEALS_ItemList {preInit = 1};
			class VN_ARVN_ItemList {preInit = 1};
			class VN_PAVN_ItemList {preInit = 1};
			class VN_PL_ItemList {preInit = 1};
			class VN_MACV_ItemList {preInit = 1};
			class VN_VC_ItemList {preInit = 1};

		};
		
		
	class CSLA_Gear_Lists

		{
			file = "functions\arsenal\gearLists\CSLA";

			class CSLA_WeaponList {preInit = 1};
			class CSLA_ItemList {preInit = 1};
			
			class CSLA_USMC_WeaponList {preInit = 1};
			class CSLA_USMC_ItemList {preInit = 1};

		};


	class 3CB_Gear_Lists

		{
			file = "functions\arsenal\gearLists\3CB";

			class 3cb_D_WeaponList {preInit = 1};
			class 3cb_D_ItemList {preInit = 1};
			
			class 3cb_MTP_WeaponList {preInit = 1};
			class 3cb_MTP_ItemList {preInit = 1};
			
			class 3cb_ColdWarBAF_WeaponList {preInit = 1};
			class 3cb_ColdWarBAF_ItemList {preInit = 1};
			
			class 3cb_ColdWarBAF_D_WeaponList {preInit = 1};
			class 3cb_ColdWarBAF_D_ItemList {preInit = 1};
			
			class 3cb_VDVLate_WeaponList {preInit = 1};
			class 3cb_VDVLate_ItemList {preInit = 1};
			
			class 3cb_USArmyLate_WeaponList {preInit = 1};
			class 3cb_USArmyLate_ItemList {preInit = 1};
			
			class 3cb_USNavyLate_WeaponList {preInit = 1};
			class 3cb_USNavyLate_ItemList {preInit = 1};
			
			class 3cb_USArmyLate_D_WeaponList {preInit = 1};
			class 3cb_USArmyLate_D_ItemList {preInit = 1};
			
			class 3cb_USNavyLate_D_WeaponList {preInit = 1};
			class 3cb_USNavyLate_D_ItemList {preInit = 1};

		};


	class ProjectUncut_Gear_Lists

		{
			file = "functions\arsenal\gearLists\ProjectUncut";

			class AUSArmy_WeaponList {preInit = 1};
			class AUSArmy_ItemList {preInit = 1};

		};


	class NZDF_Gear_Lists

		{
			file = "functions\arsenal\gearLists\NZDF";

			class NZArmy_WeaponList {preInit = 1};
			class NZArmy_ItemList {preInit = 1};

		};


	class BWMOD_Gear_Lists

		{
			file = "functions\arsenal\gearLists\BWMOD";

			class BWFLEK_WeaponList {preInit = 1};
			class BWFLEK_ItemList {preInit = 1};
			class BWTROP_WeaponList {preInit = 1};
			class BWTROP_ItemList {preInit = 1};

		};


	class FFAA_Gear_Lists

		{
			file = "functions\arsenal\gearLists\FFAA";

			class FFAA_WeaponList {preInit = 1};
			class FFAA_ItemList {preInit = 1};

		};


	class ROARS_Gear_Lists

		{
			file = "functions\arsenal\gearLists\ROARS";

			class ROARS_WeaponList {preInit = 1};
			class ROARS_ItemList {preInit = 1};

		};


	class AMF_R3F_Gear_Lists

		{
			file = "functions\arsenal\gearLists\AMF_R3F";

			class FRENCH_WeaponList {preInit = 1};
			class FRENCH_ItemList {preInit = 1};

		};


	class TFC_CAF_Gear_Lists

		{
			file = "functions\arsenal\gearLists\TFC-CAF";

			class CAFT_WeaponList {preInit = 1};
			class CAFT_ItemList {preInit = 1};
			
			class CAFT_D_WeaponList {preInit = 1};
			class CAFT_D_ItemList {preInit = 1};

		};


	class Pedagne_Gear_Lists

		{
			file = "functions\arsenal\gearLists\Pedagne";

			class ITALYArmy_WeaponList {preInit = 1};
			class ITALYArmy_ItemList {preInit = 1};

		};


	class SFP_Gear_Lists

		{
			file = "functions\arsenal\gearLists\SFP";

			class SWEDEArmy_WeaponList {preInit = 1};
			class SWEDEArmy_ItemList {preInit = 1};
			
			class SWEDEArmy80_WeaponList {preInit = 1};
			class SWEDEArmy80_ItemList {preInit = 1};

			class FINLANDArmy_WeaponList {preInit = 1};
			class FINLANDArmy_ItemList {preInit = 1};

		};


	class ACR_Gear_Lists

		{
			file = "functions\arsenal\gearLists\ACR";

			class ACR_W_WeaponList {preInit = 1};
			class ACR_W_ItemList {preInit = 1};
			class ACR_D_WeaponList {preInit = 1};
			class ACR_D_ItemList {preInit = 1};

		};


	class JSDF_Gear_Lists

		{
			file = "functions\arsenal\gearLists\JSDF";

			class JSDF_WeaponList {preInit = 1};
			class JSDF_ItemList {preInit = 1};

			class JSDF_D_WeaponList {preInit = 1};
			class JSDF_D_ItemList {preInit = 1};

		};
		
		
	class WW2_Gear_Lists

		{
			file = "functions\arsenal\gearLists\WW2";

			class WW2_USArmy_WeaponList {preInit = 1};
			class WW2_USArmy_D_WeaponList {preInit = 1};
			class WW2_USArmy_W_WeaponList {preInit = 1};
			class WW2_USAirborne_WeaponList {preInit = 1};
			class WW2_USNavy_WeaponList {preInit = 1};
			class WW2_USMarauders_WeaponList {preInit = 1};
			class WW2_USRangers_WeaponList {preInit = 1};
			class WW2_British_WeaponList {preInit = 1};
			class WW2_British_SEAC_WeaponList {preInit = 1};
			class WW2_British_W_WeaponList {preInit = 1};
			class WW2_BritAirborne_WeaponList {preInit = 1};
			class WW2_Commandos_WeaponList {preInit = 1};
			class WW2_SAS_WeaponList {preInit = 1};
			class WW2_DesertRats_WeaponList {preInit = 1};
			class WW2_CAN_WeaponList {preInit = 1};
			class WW2_AUS_WeaponList {preInit = 1};
			class WW2_Heer_WeaponList {preInit = 1};
			class WW2_Heer_W_WeaponList {preInit = 1};
			class WW2_PanzerLehr_WeaponList {preInit = 1};
			class WW2_FSJ_WeaponList {preInit = 1};
			class WW2_FSJ_DAK_WeaponList {preInit = 1};
			class WW2_DAK_WeaponList {preInit = 1};
			class WW2_SS_WeaponList {preInit = 1};
			class WW2_Soviet_WeaponList {preInit = 1};
			class WW2_Soviet_W_WeaponList {preInit = 1};
			class WW2_Japan_WeaponList {preInit = 1};
			
			class WW2_USArmy_ItemList {preInit = 1};
			class WW2_USArmy_D_ItemList {preInit = 1};
			class WW2_USArmy_W_ItemList {preInit = 1};
			class WW2_USAirborne_ItemList {preInit = 1};
			class WW2_USNavy_ItemList {preInit = 1};
			class WW2_USMarauders_ItemList {preInit = 1};
			class WW2_USRangers_ItemList {preInit = 1};
			class WW2_British_ItemList {preInit = 1};
			class WW2_British_SEAC_ItemList {preInit = 1};
			class WW2_British_W_ItemList {preInit = 1};
			class WW2_BritAirborne_ItemList {preInit = 1};
			class WW2_Commandos_ItemList {preInit = 1};
			class WW2_SAS_ItemList {preInit = 1};
			class WW2_DesertRats_ItemList {preInit = 1};
			class WW2_CAN_ItemList {preInit = 1};
			class WW2_AUS_ItemList {preInit = 1};
			class WW2_Heer_ItemList {preInit = 1};
			class WW2_Heer_W_ItemList {preInit = 1};
			class WW2_PanzerLehr_ItemList {preInit = 1};
			class WW2_FSJ_ItemList {preInit = 1};
			class WW2_FSJ_DAK_ItemList {preInit = 1};
			class WW2_DAK_ItemList {preInit = 1};
			class WW2_SS_ItemList {preInit = 1};
			class WW2_Soviet_ItemList {preInit = 1};
			class WW2_Soviet_W_ItemList {preInit = 1};
			class WW2_Japan_ItemList {preInit = 1};

		};


	class OPTRE_Gear_Lists

		{
			file = "functions\arsenal\gearLists\OPTRE";

			class OPTRE_COVENANT_ItemList {preInit = 1};
			class OPTRE_COVENANT_WeaponList {preInit = 1};
			class OPTRE_JACKAL_ItemList {preInit = 1};
			class OPTRE_JACKAL_WeaponList {preInit = 1};
			class OPTRE_FLOOD_ItemList {preInit = 1};
			class OPTRE_FLOOD_WeaponList {preInit = 1};
			class OPTRE_INSURRECTION_ItemList {preInit = 1};
			class OPTRE_INSURRECTION_WeaponList {preInit = 1};
			class OPTRE_UNSCDF_ItemList {preInit = 1};
			class OPTRE_UNSCDF_WeaponList {preInit = 1};
			class OPTRE_UNSCDF_D_ItemList {preInit = 1};
			class OPTRE_UNSCDF_D_WeaponList {preInit = 1};
			class OPTRE_UNSCDF_W_ItemList {preInit = 1};
			class OPTRE_UNSCDF_W_WeaponList {preInit = 1};
			class OPTRE_ODST_ItemList {preInit = 1};
			class OPTRE_ODST_WeaponList {preInit = 1};

		};
		
		
	class OPPOSITION_SW_Gear_Lists

		{
			file = "functions\arsenal\gearLists\OPPOSITION_SW";

			class OPPOSITION_SW_RA_WeaponList {preInit = 1};
			class OPPOSITION_SW_RA_ItemList {preInit = 1};
			
			class OPPOSITION_SW_GE_WeaponList {preInit = 1};
			class OPPOSITION_SW_GE_ItemList {preInit = 1};

		};
		
		
	class 3AS_Gear_Lists

		{
			file = "functions\arsenal\gearLists\3AS";

			class 3AS_GAR_WeaponList {preInit = 1};
			class 3AS_GAR_ItemList {preInit = 1};

		};


	class IAF_Gear_Lists

		{
			file = "functions\arsenal\gearLists\IAF";

			class AJA_ItemList {preInit = 1};
			class AJA_WeaponList {preInit = 1};

		};
		
		
	class KPA_Gear_Lists

		{
			file = "functions\arsenal\gearLists\KPA";

			class KPA_ItemList {preInit = 1};
			class KPA_WeaponList {preInit = 1};

		};
		
		
	class Legion_Gear_Lists

		{
			file = "functions\arsenal\gearLists\Legion";

			class RomanLegion_ItemList {preInit = 1};
			class RomanLegion_WeaponList {preInit = 1};

		};


	class Gear_Restriction_Lists

		{
			file = "functions\arsenal\gearLists\RestrictionLists";
			
			class BF4_WeaponRestrictionList {preInit = 1};
			class BF4_ItemRestrictionList {preInit = 1};
			class WeaponRestrictionList {preInit = 1};
			class ItemRestrictionList {preInit = 1};

		};

	
	class Vanilla_Base_Vehicle_Lists

		{

			file = "functions\VehicleLists\Vanilla\Base";

			class NATO_Base_VehList {preInit = 1};
			class NATO_T_Base_VehList {preInit = 1};
			class NATO_W_Base_VehList {preInit = 1};
			class CTRG_Base_VehList {preInit = 1};
			class CTRG_D_Base_VehList {preInit = 1};

			class CSAT_Base_VehList {preInit = 1};
			class CSAT_T_Base_VehList {preInit = 1};
			class OPF_FIA_Base_VehList {preInit = 1};
			class SPETSNAZ_Base_VehList {preInit = 1};
			class SYNDIKAT_Base_VehList {preInit = 1};
	
			class AAF_Base_VehList {preInit = 1};			
			class LDF_Base_VehList {preInit = 1};			
			class MDF_Base_VehList {preInit = 1};			
			class FIA_Base_VehList {preInit = 1};

		};


	class Vanilla_Vehicle_Lists

		{

			file = "functions\VehicleLists\Vanilla";

			class NATO_VehList {preInit = 1};
			class NATO_T_VehList {preInit = 1};
			class NATO_W_VehList {preInit = 1};
			
			class CTRG_VehList {preInit = 1};
			class CTRG_D_VehList {preInit = 1};

			class CSAT_VehList {preInit = 1};
			class CSAT_T_VehList {preInit = 1};
			class OPF_FIA_VehList {preInit = 1};
			class SPETSNAZ_VehList {preInit = 1};
			class SYNDIKAT_VehList {preInit = 1};
	
			class AAF_VehList {preInit = 1};			
			class LDF_VehList {preInit = 1};			
			class MDF_VehList {preInit = 1};			
			class FIA_VehList {preInit = 1};
			
		};
		
		
	class WS_Vehicle_Lists

		{

			file = "functions\VehicleLists\WS";
			
			class NATO_D_VehList {preInit = 1};
			class SFIA_VehList {preInit = 1};
			class OPF_Tura_VehList {preInit = 1};
			class ION_VehList {preInit = 1};
			
		};
		
		
	class Zombies_Vehicle_Lists

		{
			
			file = "functions\VehicleLists\Zombies";

			class Zombies_VehList {preInit = 1};
			
			class Survivors_VehList {preInit = 1};
			
			class Survivors_OPF_VehList {preInit = 1};

		};
		
		
	class Aegis_Vehicle_Lists

		{

			file = "functions\VehicleLists\Aegis";

			class Aegis_AAF_VehList {preInit = 1};
			class Aegis_BAF_T_VehList {preInit = 1};
			class Aegis_BAF_VehList {preInit = 1};
			class Aegis_BAF_W_VehList {preInit = 1};
			class Aegis_Bundeswehr_VehList {preInit = 1};
			class Aegis_China_VehList {preInit = 1};
			class Aegis_Iran_VehList {preInit = 1};
			class Aegis_Israel_VehList {preInit = 1};
			class Aegis_LDF_VehList {preInit = 1};
			class Aegis_Russia_VehList {preInit = 1};
			class Aegis_Russia_W_VehList {preInit = 1};
			class Aegis_US_T_VehList {preInit = 1};
			class Aegis_US_VehList {preInit = 1};
			class Aegis_US_W_VehList {preInit = 1};

		};


	class RHS_Vehicle_Lists

		{

			file = "functions\VehicleLists\RHS";

			class VDV_VehList {preInit = 1};
			class VDV_D_VehList {preInit = 1};
			class VMF_VehList {preInit = 1};
			class USMCD_VehList {preInit = 1};
			class USMCW_VehList {preInit = 1};
			class USNavy_VehList {preInit = 1};
			class USArmyD_VehList {preInit = 1};
			class USArmyW_VehList {preInit = 1};
			class SOCOM_D_VehList {preInit = 1};
			class SOCOM_W_VehList {preInit = 1};
			class SAF_VehList {preInit = 1};
			class OPF_SAF_VehList {preInit = 1};
			class CHDKZ_VehList {preInit = 1};
			class CDF_VehList {preInit = 1};
			class HIDF_VehList {preInit = 1};

		};
		
		
	class UKR_Vehicle_Lists

		{

			file = "functions\VehicleLists\UKR";

			class UKRArmy_VehList {preInit = 1};

		};
	
		
	class BF4_Vehicle_Lists

		{

			file = "functions\VehicleLists\BF4";
			
			class BF4_USMC_VehList {preInit = 1};
			class BF4_Russia_VehList {preInit = 1};

		};


	class CUP_Vehicle_Lists

		{

			file = "functions\VehicleLists\CUP";

			class CUP_USARMYD_VehList {preInit = 1};
			class CUP_USARMYW_VehList {preInit = 1};
			class CUP_SOCOM_VehList {preInit = 1};
			class CUP_USMCD_VehList {preInit = 1};
			class CUP_USMCW_VehList {preInit = 1};
			class CUP_BAFMTP_VehList {preInit = 1};
			class CUP_BAFD_VehList {preInit = 1};
			class CUP_GERMANYD_VehList {preInit = 1};
			class CUP_GERMANYW_VehList {preInit = 1};
			class CUP_HIL_VehList {preInit = 1};
			class CUP_CZArmyD_VehList {preInit = 1};
			class CUP_CZArmyW_VehList {preInit = 1};
			class CUP_ION_VehList {preInit = 1};
			class CUP_RUS_VehList {preInit = 1};
			class CUP_RUS_Spetsnaz_VehList {preInit = 1};
			class CUP_CDFW_VehList {preInit = 1};
			class CUP_CDFD_VehList {preInit = 1};
			class CUP_CHDKZ_VehList {preInit = 1};

		};


	class GM_Vehicle_Lists

		{

			file = "functions\VehicleLists\GM";

			class GM_WESTGERMANY_VehList {preInit = 1};
			class GM_WESTGERMANY_D_VehList {preInit = 1};
			class GM_EASTGERMANY_VehList {preInit = 1};
			class GM_POLAND_VehList {preInit = 1};
			class GM_DENMARK_VehList {preInit = 1};

		};
		
		
	class VN_Vehicle_Lists

		{

			file = "functions\VehicleLists\VN";
			
			class VN_USArmy_VehList {preInit = 1};
			class VN_AusArmy_VehList {preInit = 1};
			class VN_AusSAS_VehList {preInit = 1};
			class VN_USMC_VehList {preInit = 1};
			class VN_SEALS_VehList {preInit = 1};
			class VN_MACV_VehList {preInit = 1};
			class VN_ARVN_VehList {preInit = 1};
			class VN_PAVN_VehList {preInit = 1};
			class VN_PL_VehList {preInit = 1};
			class VN_VC_VehList {preInit = 1};

		};
		
		
	class CSLA_Vehicle_Lists

		{

			file = "functions\VehicleLists\CSLA";
			
			class CSLA_VehList {preInit = 1};
			class CSLA_USMC_VehList {preInit = 1};

		};


	class 3CB_Vehicle_Lists

		{

			file = "functions\VehicleLists\3CB";

			class 3CB_D_VehList {preInit = 1};
			class 3CB_MTP_VehList {preInit = 1};
			class 3CB_ColdWarBAF_VehList {preInit = 1};
			class 3CB_ColdWarBAF_D_VehList {preInit = 1};
			class 3cb_USArmyLate_VehList {preInit = 1};
			class 3cb_USNavyLate_VehList {preInit = 1};
			class 3cb_USArmyLate_D_VehList {preInit = 1};
			class 3cb_USNavyLate_D_VehList {preInit = 1};
			class 3cb_VDVLate_VehList {preInit = 1};

		};


	class ProjectUncut_Vehicle_Lists

		{

			file = "functions\VehicleLists\ProjectUncut";

			class AUSArmy_VehList {preInit = 1};

		};


	class NZDF_Vehicle_Lists

		{

			file = "functions\VehicleLists\NZDF";

			class NZArmy_VehList {preInit = 1};

		};


	class BWMOD_Vehicle_Lists

		{

			file = "functions\VehicleLists\BWMOD";

			class BWFLEK_VehList {preInit = 1};
			class BWTROP_VehList {preInit = 1};

		};


	class FFAA_Vehicle_Lists

		{

			file = "functions\VehicleLists\FFAA";

			class FFAA_VehList {preInit = 1};

		};


	class ROARS_Vehicle_Lists

		{

			file = "functions\VehicleLists\ROARS";

			class ROARS_VehList {preInit = 1};

		};


	class AMF_R3F_Vehicle_Lists

		{

			file = "functions\VehicleLists\AMF_R3F";

			class FRENCH_VehList {preInit = 1};

		};


	class TFC_CAF_Vehicle_Lists

		{

			file = "functions\VehicleLists\TFC-CAF";

			class CAFT_VehList {preInit = 1};
			class CAFT_D_VehList {preInit = 1};

		};


	class Pedagne_Vehicle_Lists

		{

			file = "functions\VehicleLists\Pedagne";

			class ITALYArmy_VehList {preInit = 1};

		};


	class SFP_Vehicle_Lists

		{

			file = "functions\VehicleLists\SFP";

			class SWEDEArmy_VehList {preInit = 1};
			class SWEDEArmy80_VehList {preInit = 1};
			class FINLANDArmy_VehList {preInit = 1};

		};


	class ACR_Vehicle_Lists

		{

			file = "functions\VehicleLists\ACR";

			class ACR_W_VehList {preInit = 1};
			class ACR_D_VehList {preInit = 1};

		};


	class JSDF_Vehicle_Lists

		{

			file = "functions\VehicleLists\JSDF";

			class JSDF_VehList {preInit = 1};
			class JSDF_D_VehList {preInit = 1};

		};
		
		
	class WW2_Vehicle_Lists

		{

			file = "functions\VehicleLists\WW2";

			class WW2_USArmy_VehList {preInit = 1};
			class WW2_USArmy_D_VehList {preInit = 1};
			class WW2_USArmy_W_VehList {preInit = 1};
			class WW2_USAirborne_VehList {preInit = 1};
			class WW2_USNavy_VehList {preInit = 1};
			class WW2_USMarauders_VehList {preInit = 1};
			class WW2_USRangers_VehList {preInit = 1};
			class WW2_British_VehList {preInit = 1};
			class WW2_British_SEAC_VehList {preInit = 1};
			class WW2_British_W_VehList {preInit = 1};
			class WW2_BritAirborne_VehList {preInit = 1};
			class WW2_Commandos_VehList {preInit = 1};
			class WW2_SAS_VehList {preInit = 1};
			class WW2_DesertRats_VehList {preInit = 1};
			class WW2_CAN_VehList {preInit = 1};
			class WW2_Heer_VehList {preInit = 1};
			class WW2_Heer_W_VehList {preInit = 1};
			class WW2_PanzerLehr_VehList {preInit = 1};
			class WW2_FSJ_VehList {preInit = 1};
			class WW2_FSJ_DAK_VehList {preInit = 1};
			class WW2_AUS_VehList {preInit = 1};
			class WW2_DAK_VehList {preInit = 1};
			class WW2_SS_VehList {preInit = 1};
			class WW2_Soviet_VehList {preInit = 1};
			class WW2_Soviet_W_VehList {preInit = 1};
			class WW2_Japan_VehList {preInit = 1};

		};


	class OPTRE_Vehicle_Lists

		{

			file = "functions\VehicleLists\OPTRE";

			class OPTRE_COVENANT_VehList {preInit = 1};
			class OPTRE_JACKAL_VehList {preInit = 1};
			class OPTRE_FLOOD_VehList {preInit = 1};
			class OPTRE_INSURRECTION_VehList {preInit = 1};
			class OPTRE_UNSCDF_VehList {preInit = 1};
			class OPTRE_UNSCDF_D_VehList {preInit = 1};
			class OPTRE_UNSCDF_W_VehList {preInit = 1};
			class OPTRE_ODST_VehList {preInit = 1};

		};
		
		
	class OPPOSITION_SW_Vehicle_Lists

		{

			file = "functions\VehicleLists\OPPOSITION_SW";

			class OPPOSITION_SW_RA_VehList {preInit = 1};
			class OPPOSITION_SW_GE_VehList {preInit = 1};

		};
		
		
	class 3AS_Vehicle_Lists

		{

			file = "functions\VehicleLists\3AS";

			class 3AS_GAR_VehList {preInit = 1};
			
		};

		
	class IAF_Vehicle_Lists

		{

			file = "functions\VehicleLists\IAF";

			class AJA_VehList {preInit = 1};

		};
		
		
	class KPA_Vehicle_Lists

		{

			file = "functions\VehicleLists\KPA";

			class KPA_VehList {preInit = 1};

		};
		
		
	class Legion_Vehicle_Lists

		{

			file = "functions\VehicleLists\Legion";

			class RomanLegion_VehList {preInit = 1};

		};
	
	
	class Tasks

		{

			file = "functions\tasks";
			
			class parentTasks {};
			class updateTask {};
			class getAllCurrentTasks {};
			class resyncTasks {};

		};

		
	class Mission_Setup

		{

			file = "functions\missions\missionSetup";
			
			class defineObjectives {};
			class hideVehicleInObjectiveArea {};
			class inUnfinishedObjective {};
			class objectiveTrigger {};
			class setupMissions {};
			class missionData {};
			class ObjectiveData {};
			class hideObjectiveIfMissionActive {};
			class objectiveProgression {};
			class endMissionTracker {};
			class revealObjective {};
			class missionCleanUp {};
			class inAreaTrigger {};
			class selectNextMission {};
			class mapBoardActions {};
			class findReturnPoints {};
			class resetObjective {};

		};
	
	
	class Mission_Messages

		{

			file = "functions\missions\messages";
			
			class missionStartedMessage {};
			class missionCompleteMessage {};
			class missionMessage {};

		};
		
		
	class Main_Missions

	{

		file = "functions\missions\mainMissions";
		
		class MILITARY_Mission {};
		class AIRFIELD_Mission {};
		class BEACHHEAD_Mission {};
		class DEFEND_MAIN_Mission {};
		class INFECTION_Mission {};
		
	};
	
	
	class Side_Missions

	{

		file = "functions\missions\sideMissions";

		class MILITARY_SMALL_Mission {};
		class TOWER_Mission {};
		class REPAIR_VEHICLE_Mission {};
		class SUPPLY_DROPS_Mission {};
		class ESTABLISH_COMMS_Mission {};
		class DEFEND_SMALL_Mission {};
		class RESCUE_PILOT_Mission {};
		class DESTROY_STRUCTURE_Mission {};
		class DESTROY_VEHICLE_Mission {};
		class POWER_PLANT_Mission {};
		class MEET_ALLIES_Mission {};
		class KILL_CREATURE_Mission {};
		
	};
	
	
	class Ambient_Missions

	{

		file = "functions\missions\ambientMissions";
		
		class CONVOY_Mission {};		
		
	};
	
	
	class Sub_Objectives

	{

		file = "functions\missions\subObjectives";
		
		class spawnHVT {};
		class spawnArtillery {};
		class towerObjective {};
		class establishComms {};
		class rescueHostage {};
		class hostageAction {};
		class destroyMCOM {};
		
	};
	
	
	class Random_Encounters

	{

		file = "functions\missions\randomEncounters";
		
		class randomEncounterPositionsByMap {};
		class inRandomEncounterTracker {};		
		class spawnRandomEncounter {};
		
	};
	
	
	class Random_Encounter_Missions

	{

		file = "functions\missions\randomEncounters\RandomEncounterMissions";
		
		class randomInfantryPatrol {};
		
	};
	
	
	class Conflict

	{

		file = "functions\conflict";
		
		class conflictSetup {};
		class revealConflictObjectives {};
		class captureFlag {};
		class defineConflictHQ {};
		
	};
			
		
	class Faction_Setup_Vanilla

		{

			file = "FactionSetup\vanilla";
			
			class vanilla_FactionSetup_default {};
			class vanilla_FactionSetup_malden {};
			class vanilla_FactionSetup_tanoa {};
			class vanilla_FactionSetup_tem_anizay {};
			class vanilla_FactionSetup_stozec {};
			class vanilla_FactionSetup_enoch {};
			class vanilla_FactionSetup_fapovo {};
			class vanilla_FactionSetup_isladuala3 {};
			class vanilla_FactionSetup_cup_chernarus_A3 {};
			class vanilla_FactionSetup_gm_weferLingen_summer {};
			class vanilla_FactionSetup_gm_weferLingen_winter {};
			class vanilla_FactionSetup_Cam_Lao_Nam {};
			class vanilla_FactionSetup_vn_khe_sanh {};
			class vanilla_FactionSetup_stratis {};

		};
		
		
	class Faction_Setup_WS

		{

			file = "FactionSetup\WS";
			
			class Vanilla_FactionSetup_SefrouRamal {};

		};
		
		
	class Faction_Setup_ColdWar

		{

			file = "FactionSetup\coldWar";
			
			class coldWar_FactionSetup_default {};
			class coldWar_FactionSetup_gm_weferLingen_summer {};
			class coldWar_FactionSetup_gm_weferLingen_winter {};
			class coldWar_FactionSetup_tem_anizay {};
			class coldWar_FactionSetup_stozec {};
			class coldWar_FactionSetup_enoch {};
			class coldWar_FactionSetup_fapovo {};
			class coldWar_FactionSetup_isladuala3 {};			
			class coldWar_FactionSetup_cup_chernarus_A3 {};

		};
		
		
	class Faction_Setup_WW2

		{

			file = "FactionSetup\WW2";
			
			class WW2_FactionSetup_default {};
			class WW2_FactionSetup_tem_anizay {};
			class WW2_FactionSetup_enoch {};
			class WW2_FactionSetup_juju_orglandes {};
			class WW2_FactionSetup_fow_map_henderson {};
			class WW2_FactionSetup_fow_map_tarawa {};
			class WW2_FactionSetup_cup_chernarus_A3 {};
			class WW2_FactionSetup_I44_Omaha_V2 {};
			class WW2_FactionSetup_swu_kokoda_map {};

		};
		
		
	class Faction_Setup_AEGIS

		{

			file = "FactionSetup\AEGIS";
			
			class AEGIS_FactionSetup_default {};

		};
		
		
	class Faction_Setup_CUP

		{

			file = "FactionSetup\CUP";
			
			class CUP_FactionSetup_default {};

		};
		
		
	class Faction_Setup_OppositionSW

		{

			file = "FactionSetup\OppositionSW";
			
			class OppositionSW_FactionSetup_default {};

		};
		
		
	class Faction_Setup_OPTRE

		{

			file = "FactionSetup\OPTRE";
			
			class OPTRE_FactionSetup_default {};

		};
		
		
	class Faction_Setup_RHS

		{

			file = "FactionSetup\RHS";
			
			class RHS_FactionSetup_cup_chernarus_A3 {};
			class RHS_FactionSetup_enoch {};
			class RHS_FactionSetup_fapovo {};
			class RHS_FactionSetup_isladuala3 {};
			class RHS_FactionSetup_gm_weferlingen_summer {};
			class RHS_FactionSetup_gm_weferlingen_winter {};
			class RHS_FactionSetup_stozec {};
			class RHS_FactionSetup_Tanoa {};
			class RHS_FactionSetup_tem_anizay {};
			class RHS_FactionSetup_altis {};
			class RHS_FactionSetup_malden {};
			class RHS_FactionSetup_Cam_Lao_Nam {};
			class RHS_FactionSetup_SefrouRamal {};
			class RHS_FactionSetup_Stratis {};
			class RHS_FactionSetup_default {};

		};
			
		
	class Faction_Setup_VN

		{

			file = "FactionSetup\VN";
			
			class VN_FactionSetup_default {};
			class VN_FactionSetup_Cam_Lao_Nam {};
			class VN_FactionSetup_vn_khe_sanh {};
			
		};
		
		
	class Faction_Setup_Zombies

		{

			file = "FactionSetup\Zombies";
			
			class Zombies_FactionSetup_default {};

		};


	class Player_Options

		{

			file = "functions\playerOptions";

			class arsenal {};
			class cancelCurrentMission {};
			class copyClipboardLinebreak {};
			class deleteCursorObject {};
			class dismissRecruits {};
			class earPlugs {};
			class godMode {};
			class groupLasers {};
			class invisible {};
			class killAllEnemies {};
			class nextMissionLevel {};
			class setMidday {};
			class setMidnight {};
			class teleportGroup {};
			class teleportPlayer {};
			class teleportSelectedPlayer {};
			class setAiSkillAction {};
			class gameModeSwitch {};
			class startNewRandomMissionAction {};
			class takeBackSquadLeader {};
			class playerActionsSetup {};

		};
		
		
	class Menus

		{

			file = "functions\playerOptions\Menus";

			class adminMenu {};
			class droneMenu {};
			class recruitsMenu {};
			class suppliesMenu {};
			class roleSelectMenu {};
			class squadLeaderMenu {};
			class aircraftMenu {};
			class gadgetsMenu {};
			class factionsMenu {};
			class saveMenu {};
			class menuSetup {};			

		};


	class Reinforcements

		{

			file = "functions\Reinforcements";
			
			class createReinforcementsVehicle {};
			class reinforcementsEject {};
			class reinforcementsInsertion {};
			class reinforcementsRTB {};
			class openRamp {};
			class callReinforcementsAction {};
			class callReinforcementsMain {};	
			class callReinforcementsGround {};				
			class reinforcementsInfantrySquad {};
			class noAirfieldMaps {};

		};


	class SpawnForce

		{

			file = "functions\SpawnForce";

			class SpawnForce {};
			class spawnForceValues {};
			
			class SpawnInfForce {};
			class SpawnPatrolGroups {};
			class SpawnGarrisonGroups {};
			class SpawnParadropGroups {};
			
			class SpawnArtilleryGroups {};
			class SpawnVehGroups {};
			class SpawnEnemyAir {};
			class spawnDefendForce {};
			
			class crewStaticsInArea {};
			class blackListedGroupTypes {};
			
			class spawnZombieGroup {};

		};
		
		
	class SpawnInPlane

		{

			file = "functions\SpawnInPlane";

			class createSpawnInPlane {};
			class spawnInPlaneSetupClient {};
			class spawnInPlaneSetupServer {};
			class spawnInPlaneAction {};

		};


	class FastTravel

		{

			file = "functions\FastTravel";

			class fastTravelSetup {};
			class fastTravelTeleport {};
			class fastTravelAction {};
			class activateFastTravelFlag {};

		};


	class PlayerVehicles

		{

			file = "functions\PlayerVehicles";

			class activateVehicleAction {};
			class playerVehicleSetup {};
			class spawnVehicle {};
			class switchVehicleTypeAction {};			
			class respawnVehicleAction {};							
			class attachToInvisibleHelipad {};
			class deleteAttachHelipad {};
			class attachHelipadBlacklist {};
			class tailDraggers {};		
			class baseVehicleLevels {};
			class findVehicleLevel {};
			class getDisplayName {};
			class spawnVehicleRespawn {};
			class spawnVehicleInit {};
			class disabledTrigger {};
			class respawnSavedVehicles {};

		};
		
	
	class customVehicleLoadout
	
		{
			
			file = "functions\PlayerVehicles\customVehicleLoadouts";
			
			class customVehicleWeapons {};
			class customPylonLoadouts {};
			class setCustomPylonLoadout {};
			class removePylonWeapons {};
			class 3CBturretAmmoFix {};
			class OPTREturretAmmoFix {};
			
		};
		
		
	class customVehicleTextures
	
		{
			
			file = "functions\PlayerVehicles\customVehicleTextures";
			
			class setVehicleTextures {};
			class getTextureList {};
			class hideSelections {};	
			class hideDoorIfC47 {};
			class blackListedSelections {};
			
		};
		
		
	class Recruits

		{

			file = "functions\Recruits";

			class loadRecruitInVehicle {};
			class setupOfficers {};
			class recruitActions {};
			class blacklistTypesByMod {};
			class deleteIfNoPlayers {};
			class dismissRecruitAction {};
			class spawnRecruit {};
			class setRecruitName {};
			class recruitSelfHeal {};

		};
		
		
	class CargoLoading

		{

			file = "functions\CargoLoading";
			
			class cargoLoading {};
			class attachObjects {};
			class getAttachableObjects {};
			class isBlacklistedCargoLoading {};

		};
		
		
	class ModWarning

		{

			file = "functions\ModWarning";
			
			class ModWarning {};
			class ModPresetData {};

		};
		
		
	class Diary

		{

			file = "functions\Diary";
			
			class missionStatus {};
			class vehicleUnlockDiary {};
			class CurrentFactionsDiary {};
			class credits {};
			class tutorials {};
			class diarySetup {};

		};

	
	class HideObjectsIfWW2

		{

			file = "functions\HideObjectsIfWW2";
			


		};
		
		
	class HideObjectsIfWW2_MapData

		{

			file = "functions\HideObjectsIfWW2\MapData";
			
			class cup_chernarus_A3_blacklistedModels {preInit = 1};
			class enoch_blacklistedModels {preInit = 1};
			class fow_map_henderson_blacklistedModels {preInit = 1};
			class tem_anizay_blacklistedModels {preInit = 1};
			
			class cup_chernarus_A3_blacklistedBuildings {};
			class tem_anizay_blacklistedBuildings {};

		};
		
		
	class UnitControl

		{

			file = "functions\UnitControl";
			
			class dismissSelectedUnits {};
		
		};
		
		
	class NPCDialog

		{

			file = "functions\NPCDialog";
			
			class calculateReadTime {};
			class subtitleWithDelay {};
			class startNpcDialogAction {};
			class addDialogOption {};
		
		};


	class Default

		{

			file = "functions";

			class preinit {preInit = 1};
			class defineMarkerColors {preInit = 1};
			class functions {preInit = 1};
			class GetCfgGroups {};
			class SpawnGroup {};
			class AliveDeadPlayers {};
			class PlayerInRadius {};
			class SortCFGVehicles {};
			class SpawnCrewedVehicle {};
			class DefineGarages {};
			class spawnEmptyCampCars {};
			class spawnEmptyCampHelis {};
			class SpawnAttackingForce {};
			class LastInArray {};
			class SortCfgByType {};
			class CreateMinefield {};
			class SpawnSeaForce {};
			class GetAllWeaponsInCFG {};
			class CopyToClipboard {};
			class FindParking {};
			class SetGroupLeader {};
			class DialogWithDelay {};
			class calculateReadDelayTime {};
			class CountAllGroupsWithPlayers {};
			class AllUnitsInGroupsWithPlayers {};
			class FindNearestPlayer {};
			class VehicleRestrictions {};
			class paradropReinforcements {};
			class ParadropReinforcementsWaypoint {};
			class LockDriverAndCopilot {};
			class SwitchLoadout {};
			class vehicleRestrictionWarning {};
			class findPositionsInNearBuildings {};
			class trackingBeeper {};
			class requisitionVehicle {};			
			class fireSupport {};
			class createUAVSpawnMarkers {};
			class applyCustomTexture {};
			class findRandomEmptyPosition {};
			class createArtillerySpawnMarkers {};
			class setExplosiveChargeAction {};
			class createCampSpawnMarkers {};
			class KnowsAboutMovingMarker {};
			class remarker {};
			class gatherIntelAction {};
			class createCampVehicleSpawnMarkers {};
			class replaceHelipadLights {};
			class stopFiringAtBase {};
			class spawnIntelObjects {};
			class HQMarkerIcon {};
			class createSmallAASiteMarkers {};
			class hasSeatsFree {};
			class restrictedTurretWeapons {};
			class defineCrewAndPilots {};
			class welcomeMessage {};
			class movingMarker {};
			class movingMarkerPlayer {};
			class hideMapMarkers {};
			class safeZone {};
			class removeFog {};
			class invunerableBaseBuildings {};
			class defineSpawnPoints {};
			class setupSpawnPoints {};
			class unblockAI {};
			class discordLink {};
			class outOfBoundsRestrictions {};
			class dayNightCycleSettings {};
			class autoRefillVehicleAmmo {};
			class setAISkill {}
			class disableTowersDamage {};
			class inArrayOfAreas {};
			class fixMarkerSize {};
			class holsterWeapon {};
			class hideObjectiveMarkers {};
			class pylonLoadoutToClipboard {};		
			class paradropCargo {};			
			class healNpcAction {};
			class getAllItemsInVehicle {};		
			class spawnCabinetIntelObjects {};
			class spawnInternalLighting {};
			class attachFlashLightToUniform {};
			class attachFlashLightKeydown {};
			class createNearestCampRespawnPoint {};
			class spinningMapMarker {};
			class taskPatrol {};
			class timeOut {};
			class copyTexturesToClipboard {};
			class replaceWithSimpleObject {};
			class createTranslatedVehicleCrew {};
			class isVehCrewedAndOperational {};
			class setCorrectIdentity {};
			class ryansZombiesFix {};
			class dropWeapon {};
			class create3denEntityAtCursor {};
			class spawnBaseAA {};
			class takeBackSquadFromAI {};
			class withstand {};
			class Respawn {};
			class inHouse {};
			class selectPositionInNearBuilding {};
			class fenceTypes {};
			class missionParameterSetup	{preinit = 1};		
			class randomSupplyDrops {};
			class transferInventoryToArsenal {};
			class detectPlayerInMarkerArray {};
			class findObjectiveFactionInArea {};
			class zombieUnits {};
			class supplyDrop {};
			class randomEncounterOnWeaponFire {};
			class findRandomPositionNotNearPlayer {};
			class findParkingPositions {};
			class spawnEmptyCars {};
			class establishCommsAction {};
			class positionInMarker {};
			class saveLoadoutForRespawn {};
			class gameModeSetup {preinit = 1};
			class outOfBounds {};
			class setTime {};
			class addForwardVelocity {};
			class defineWorldCorners {preinit = 1};
			class clearLoadout {};
			class disableAMS {};
			class autobalancer {};
			class onFirstSpawn {};
			class aggroInRange {};
			
		};
		

		class ServicePads
		
		{

			file = "functions\ServicePads";
			
			class servicePadSetup {};
			class servicePadMarker {};
			class servicePadTrigger {};
			class cornerMapServicePads {};

		};
		
		
		class Gadgets
		
		{

			file = "functions\Gadgets";
			
			class resupplyAtAmmobox {};
			class dropMedicalSupplies {};		
			class dropAmmoSupplies {};	
			class dropSpawnBeacon {};	
			class dropTUGS {};	
			class dropMAV {};	
			class dropEOD {};	
			class dropSOFLAM {};
			class dropMortar {};
			class wireCutters {};

		};
		
		
		class CivPop
		
		{

			file = "functions\CivPop";
			
			class agentPatrol {};
			class spawnAgents {};
			class playerInCivAreaTracker {};
			class civFlee {};
			class civPopLists {};

		};
		
		
		class Flag_Texture
		
		{

			file = "functions\flagTexture";
			
			class switchFlags {};
			class setFlagTexture {};
			class getFlagTexture {};

		};
		
		
		class Med_Stations
		
		{

			file = "functions\medStations";
			
			class setupMedStations {};
			class medStationAction {};

		};
		
		
		class OptreFunctions

		{

			file = "functions\OptreFunctions";
			
			class OptreSetup {};
			class getOutOfCryopod {};
			class moveIntoCryopod {};
			class disableShipTurrets {};
			class activateMjolnir {};

		};
		
		
		class Database

		{

			file = "functions\Database";

			class databaseInit {};
			class resetDatabase {};
			class savePlayerData {};
			class autoSave {};
			class manualSaveAction {};
			class resetDatabaseAction {};

		};
		
		
		class Allied_Camps

		{

			file = "functions\AlliedCamps";

			class alliedCampsSetup {};
			class activateAlliedCamp {};
			class unlockFactionMessage {};
			class definePlayerCamps {};

		};
		
		
		class FireSupport

		{

			file = "functions\FireSupport";

			class fireSupportData {};
			class fireSupportAction {};
			class fireSupportBarrage {};
			class fireSupportMunitions {};
			class fireSupportSetup {};
			class ordnanceDrop {};
			class spawnOrdnance {};
			class spawnCruiseMissileBatteries {};
			class fireCruiseMissile {};	
			class switchBinoculars {};
			class addMunitions {};
			class createAimArrow {};

		};


	class Flip_Vehicle

		{

			file = "functions\flipVehicle";

			class flipVehicleInit {};
			class flipAction {};

		}


	class Drones

		{

			file = "Functions\Drones";

			class droneTypesList {};
			class dronesSetupServer {};
			class dronesSetupClient {};
			class spawnDrone {};
			class setupDroneActions {};
			class despawnActiveDrones {};
			
		}


	class Paradrop_Transport

		{

			file = "functions\paradropTransport";
			
			class setupParadropTransportServer {};
			class setupParadropTransportClient {};
			class ParadropPlayerActions {};
			class paradropLoadout {};
			class eject {};
			class ejectIFA {};
			class ParadropVehWaypoint {};
			class setupParadropVehicle {};

		};


	class Heli_Transport

		{

			file = "Functions\HeliTransport";
			
			class setupHeliTransportServer {};
			class setupHeliTransportClient {};
			class setupHeliTransportVehicle {};
			class HeliTransportAction {};
			class createHeadwind {};
			class heliTransportRTB {};
			class heliTransportWaypoint {};
			class heliTransportObjectsToIgnore {};

		};
		
		
	class Glider_Transport

		{

			file = "Functions\GliderTransport";
			
			class setupGliderTransportVehicle {};
			class gliderAction {};
			class setupGliderTransportClient {};
			class gliderWaypoint {};
			class activateGliderAction {};

		};


	class Translation

		{
			file = "functions\translation";

			class translateClassNames {};
			class translationLists {};
			class defineRoleTranslations {};

		};


	class Arsenal

		{

			file = "functions\arsenal";

		};
		
		
		class ArsenalSystem

		{

			file = "functions\arsenal\arsenalSystem";
			
			class arsenalPlayerInit {};
			class arsenalObjectSetupServer {};
			class arsenalObjectSetupClient {};
			class addLoadoutToArsenal {};	
			class filterGearByClass {};
			class addCapturedGear {};
			class addItems {};
			class addWeaponsByLevel {};
			class setArsenalTextAndConditions {};
			class disableArsenalRecallButtons {};
			class onArsenalOpen {};
			class onArsenalClose {};
			class gearRestrictions {};
			class defaultLoadoutAction {};
			class addObjectToArsenalList {};
			class hideArsenalTents {};
			class translateItems {};
			class getAllFactionWeapons {};
			class getAllFactionItems {};
			class addRandomGearToContainer {};
			class addToArsenal {};
			class addToArsenal_EAST {};
			class limitItems {};
			class randomGearGenerator {};
			class weaponSoundLevelModifier {};
			class hasSuppressor {};
			class recallSavedLoadout {};

		};
		
		
	class Supplies

		{

			file = "functions\Supplies";
			
			class outpostActions {};
			class repairStationActions {};
			class setupSupplies {};
			class spawnSupplies {};
			class activateSuppliesAction {};
			class spawnSuppliesAction {};
			class spawnSupplyCrate {};
			class activateOutpost {};
			class activateRepairDepot {};
			class setupSavedDeployedOutposts {};

		};
	
	
	class Markers

		{

			file = "functions\Markers";
			
			class createMarkerWithBackground {};
			class mapInteractionMarkers {};
			class hideMarkersOnZoomOut {};
			class createMarker {};
			class setupCampMarker {};

		};
		
		
	class RoleSelect

		{

			file = "functions\RoleSelect";
			
			class selectRoleActions {};
			class setupRoleSelect {};
			class switchRole {};
			class switchSideAction {};

		};


};


class MGI
{

	tag = "MGI";

	
	class DryArea

		{

			file = "functions\MGI\DryArea";
			
			class dryArea {preinit = 1};			

		};
		
};
