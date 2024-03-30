 
 
	_center = param [0]; 
	 
	_position = switch (typeName _center) do { 

		case "ARRAY" : {_center}; 
		case "OBJECT" : {getPos _center}; 
		case "STRING" : {markerPos _center}; 
		default {_center}; 

	}; 
	  
	_marker = param [1]; 
	 
	(count ([_position] inAreaArray _marker) > 0)