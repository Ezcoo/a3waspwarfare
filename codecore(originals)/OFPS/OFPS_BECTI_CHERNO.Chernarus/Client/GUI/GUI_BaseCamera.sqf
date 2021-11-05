_last_campos = [0,0,0];
while { true } do {
	if (isNil {uiNamespace getVariable "cti_dialog_ui_basecam"}) exitWith {}; //--- Menu is closed.
	
	_track = uiNamespace getVariable "cti_dialog_ui_basecam_focus";
	if !(isNil '_track') then {
		if (isNull _track) then {
			uiNamespace setVariable ["cti_dialog_ui_basecam_focus", nil];
			((uiNamespace getVariable "cti_dialog_ui_basecam") displayCtrl 177011) ctrlSetText "Feed: No Target";
		} else 
		{
			//https://community.bistudio.com/wiki/Code_Optimisation#Position_World_is_the_fastest
			_pos = visiblePosition vehicle _track;
			_pos set [2, getPos CTI_BaseCamera select 2];
			CTI_BaseCamera setPos _pos;
		};
	};
	
	sleep .01;
};