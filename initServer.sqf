if (isServer || isDedicated) exitWith {
	addMissionEventHandler ["MPEnded", {
		[false, 0] call grad_persistence_fnc_saveMission;
	}];
};