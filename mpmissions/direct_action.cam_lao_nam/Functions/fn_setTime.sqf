
	_time = param [0, 9];

	[(_time - daytime + 24 ) % 24] remoteExec ["skipTime", 2];