#define HUD_IDC	1500000



class RscTitles {
	
	titles[] = {CTI_CaptureBar, CTI_ConstructionInterface, CTI_HUD_RSC, CTI_RewardDisplay, CTI_RscRepairProgress};
	
	class CTI_CaptureBar {
		idd = 600100;
		duration = 15000;
		name = "Capture Bar";
		onLoad = "uiNamespace setVariable ['cti_title_capture', _this select 0]";
		onUnload = "uiNamespace setVariable ['cti_title_capture', displayNull]";
		
		class controls {
			class CTI_Progress: RscProgress
			{
				idc = 601000;

				x = 0.557283 * safezoneW + safezoneX;
				y = 0.016 * safezoneH + safezoneY;
				w = 0.183305 * safezoneW;
				h = 0.0055 * safezoneH;
				//colorBackground[] = {0.063,0.063,0.063,0.5};
			};
			class CTI_Progress_Label: RscText
			{
				idc = 601001;
				shadow = 2;
				style = ST_RIGHT;
				SizeEx = "(			(			(			((safezoneW / safezoneH) min 1.5) / 1.5) / 25) * 0.95)";
				x = 0.557283 * safezoneW + safezoneX;
				y = 0.027 * safezoneH + safezoneY;
				w = 0.183305 * safezoneW;
				h = 0.022 * safezoneH;
				colorText[] = {0.258824,0.713726,1,1};
				//colorBackground[] = {0.063,0.063,0.063,0.5};
			};
			class CTI_Intel_Label: RscText
			{
				idc = 601002;
				style = ST_RIGHT;
				colorText[] = {1,1,1,1};
				shadow = 2;
				SizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.65)";
				x = 0.557283 * safezoneW + safezoneX;
				y = 0.049 * safezoneH + safezoneY;
				w = 0.183305 * safezoneW;
				h = 0.011 * safezoneH;
				//colorBackground[] = {0.063,0.063,0.063,0.5};
			};
			class CTI_SV_Label: CTI_Intel_Label
			{
				idc = 601006;

				x = 0.557283 * safezoneW + safezoneX;
				y = 0.06 * safezoneH + safezoneY;
				w = 0.183305 * safezoneW;
				h = 0.011 * safezoneH;
				//colorBackground[] = {0.063,0.063,0.063,0.5};
				SizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.65)";
			};
			class CTI_Com_Label: CTI_Intel_Label
			{
				idc = 601003;

				x = 0.557283 * safezoneW + safezoneX;
				y = 0.071 * safezoneH + safezoneY;
				w = 0.183305 * safezoneW;
				h = 0.011 * safezoneH;
				//colorBackground[] = {0.063,0.063,0.063,0.5};
				SizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.65)";
			};
			class CTI_Upgrade_Label: CTI_Intel_Label
			{
				idc = 601004;

				x = 0.557283 * safezoneW + safezoneX;
				y = 0.082 * safezoneH + safezoneY;
				w = 0.183305 * safezoneW;
				h = 0.011 * safezoneH;
				//colorBackground[] = {0.063,0.063,0.063,0.5};
				SizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.65)";
			};
			class CTI_FPS_Label: CTI_Intel_Label
			{
				idc = 601005;

				x = 0.557283 * safezoneW + safezoneX;
				y = 0.093 * safezoneH + safezoneY;
				w = 0.183305 * safezoneW;
				h = 0.011 * safezoneH;
				//colorBackground[] = {0.063,0.063,0.063,0.5};
				SizeEx = "(			(			(			((safezoneW / safezoneH) min 1.1) / 1.1) / 25) * 0.65)";
				//colorText[] = {0,0.35,0.04,1};
				//sizeEx = 0.023;
			};
		};
	};
	
	class CTI_ConstructionInterface {
		idd = 112200;
		movingEnable = 0;
		duration = 1e+011;
		name = "Construction Interface";
		onLoad = "uiNamespace setVariable ['cti_title_coin', _this select 0]";
		onUnload = "uiNamespace setVariable ['cti_title_coin', displayNull]";
		
		class controlsBackground {
			class CTI_Background : RscText {
				x = "SafeZoneX";
				y = "SafeZoneY + (SafezoneH * 0.91)";
				w = "SafeZoneW";
				h = "SafeZoneH * 0.1";
				colorBackground[] = {0, 0, 0, 0.5};
				moving = 1;
			};
		};
		
		class controls {
			class Cursor : RscPictureKeepAspect {
				idc = 112201;
				x = 0.4;
				y = 0.4;
				w = 0.2;
				h = 0.2;
				colorText[] = {1, 1, 1, 0.1};
				colorBackground[] = {0, 0, 0, 0};
				text = "Rsc\Pictures\cursor_w_laserlock_gs.paa";
			};
			
			class IconWall: RscPictureKeepAspect {
				idc = 112216;
				x = "SafeZoneX + (SafeZoneW * 0.75)";
				y = "SafeZoneY + (SafezoneH * 0.953)";
				w = "SafeZoneW * 0.04";
				h = "SafeZoneH * 0.04";
				
				colorText[] = {1, 1, 1, 0.3};
				colorBackground[] = {0, 0, 0, 0};
				text = "Rsc\Pictures\icon_walls.paa";
			};
			
			class IconStaticMan: IconWall {
				idc = 112217;
				x = "SafeZoneX + (SafeZoneW * 0.72)";
				
				text = "Rsc\Pictures\icon_staticman.paa";
			};
			class IconTerrain: IconWall
			{
				idc = 112218;

				text = "Rsc\Pictures\icon_terrain.paa";
				x = 0.689835 * safezoneW + safezoneX;
				y = 0.95232 * safezoneH + safezoneY;
				w = 0.04 * safezoneW;
				h = 0.04 * safezoneH;
			};
			class DescriptionText : RscStructuredText {
				idc = 112214;
				x = "SafeZoneX + (SafeZoneW * 0.21)";
				y = "SafeZoneY + (SafezoneH * 0.913)";
				w = "SafeZoneW * 0.58";
				h = "SafeZoneH * 0.1";
				sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
				
				// colorBackground[] = {0, 0, 0, 0.6}; //debug
				
				class Attributes {
					font = "PuristaMedium";
					color = "#42b6ff";
					align = "left";
					shadow = true;
				};
			};
			
			class ControlsText : DescriptionText {
				idc = 112215;
				
				x = "SafeZoneX + (SafeZoneW * 0.8)";
				w = "SafeZoneW * 0.2";
			};
			
			class CashText : DescriptionText {
				idc = 112224;
				
				x = "SafeZoneX";
				w = "SafeZoneW * 0.15";
			};
		};
	};
		class CTI_HUD_RSC {
			idd=-1;
			duration=1e+011;
			name="HUD_RSC";
			movingEnable = false;
			onLoad="uiNamespace setVariable ['HUD', _this select 0];";
			objects[]={};
			class controls {
				class HUD_Vehicle: RscStructuredText {
					idc = HUD_IDC+2;
					x = 0.80 * safezoneW + safezoneX;
					y = 0.60 * safezoneH + safezoneY;
					w = 0.2 * safezoneW;
					h = 0.20 * safezoneH;
					colorBackground[] = {0, 0, 0, 0};
				};
			};
		};
		
	class CTI_RewardDisplay
	{    
		idd = 610000;
		duration = 4;
		onLoad = "uiNamespace setVariable ['cti_title_rewarddisplay', _this select 0]";
		onUnload = "uiNamespace setVariable ['cti_title_rewarddisplay', displayNull]";
		
		class controls
		{
			class CTI_RewardDisplay_Log
			{    
				idc = 610001;
				type = CT_STRUCTURED_TEXT;
				style = 0;
				x = 0.8; 
				y = 0.1;
				w = 0.6;
				h = 0.04 * 8;
				size = 0.04;
				colorBackground[] = { 0, 0, 0, 0 };
				text = "";
				class Attributes {
					font = "PuristaMedium";
					color = "#000000";
					align = "left";
					valign = "bottom";
					shadow = true;
					shadowColor = "#000000";
					size = "1";
				};
			};  
		};	
	};
	class CTI_RscRepairProgress 
	{
		idd = 800000;
		duration = 1;
		fadeIn = 0;
		fadeOut = 1;
		onLoad = "uiNamespace setVariable ['cti_dialog_ui_repairProgress', _this select 0]; ((_this select 0) displayCtrl 800001) progressSetPosition 0";
		onUnload = "uiNamespace setVariable ['cti_dialog_ui_repairProgress', displayNull];";
		class controlsBackground
		{
			class CTI_ProgressBackground: RscStructuredText
			{
				idc = 800001;
				text = "";
				x = 0.35 * safezoneW + safezoneX;
				y = 0.75 * safezoneH + safezoneY;
				w = .3 * safezoneW;
				h = 0.04 * safezoneH;
				colorBackground[] = {0,0,0,1};
			};
			
			class CTI_FrameBackground: RscStructuredText
			{
				idc = 800002;
				text = "";
				x = 0.345 * safezoneW + safezoneX;
				y = 0.74 * safezoneH + safezoneY;
				w = .31 * safezoneW;
				h = 0.06 * safezoneH;
				colorBackground[] = {0.05,0.05,0.05,0.95};
			};
		};
	
		class controls
		{
		
			class CTI_ProgressBar: RscProgress 
			{
				idc = 800003;
				style = 0;
				colorFrame[] = {0,0,0,1};
				colorBar[] = {.922,.706,0,1};
				texture = "#(argb,8,8,3)color(1,1,1,1)";
			
			
				x = 0.35 * safezoneW + safezoneX;
				y = 0.75 * safezoneH + safezoneY;
				w = .3 * safezoneW;
				h = 0.04 * safezoneH;
			}; 
			class CTI_RepairLabel: RscStructuredText
			{
				idc = 800004;
				text = "Repairing: UNKNOWN VEHICLE. Progress: 0%";
				colorText[] = {1,1,1,1};
				x = 0.4 * safezoneW + safezoneX;
				y = 0.757 * safezoneH + safezoneY;
				w = 0.5 * safezoneW;
				h = 0.1 * safezoneH;
				sizeEx = 2.6 * GUI_GRID_H;
			};
		};
	};
};