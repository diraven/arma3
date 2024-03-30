	
	waitUntil { !isNull ( uiNamespace getVariable [ "RscDiary", displayNull ] ) };

	uiNamespace getVariable "RscDiary" displayCtrl 51 ctrlAddEventHandler [ "MouseZChanged", {
		params[ "_ctrl" ];
		
		_markerShowMinMax = [ 0.01, 0.5 ];
		
		_zoom = ctrlMapScale _ctrl;
		_show = _zoom > ( _markerShowMinMax select 0 ) && _zoom < ( _markerShowMinMax select 1 );
		
		{
			_x setMarkerAlphaLocal ( parseNumber _show );
		}forEach BEW_v_mapInteractionMarkers;
		
	}];