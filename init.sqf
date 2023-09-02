if (hasInterface) then {
    [] spawn {
        waitUntil {!isNull findDisplay 46};
        (findDisplay 46) displayAddEventHandler ["Unload", {
            if (!isServer) exitWith {};
            [false, 0] call grad_persistence_fnc_saveMission;
        }];
    };
} else {
    addMissionEventHandler ["HandleDisconnect", {
        if !(allPlayers isEqualTo []) exitWith {false};
        params ["_unit"];
        deleteVehicle _unit;
        [false, 0] call grad_persistence_fnc_saveMission;
    }];
};