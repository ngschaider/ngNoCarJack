local lastVehicleTriedToEnter = nil;

Citizen.CreateThread(function()
	while true do
		local ped = PlayerPedId();
		local vehicle = GetVehiclePedIsTryingToEnter(ped);
		if DoesEntityExist(vehicle) and not IsEntityAMissionEntity(vehicle) then
			if vehicle ~= lastVehicleTriedToEnter then
				local netId = NetworkGetNetworkIdFromEntity(vehicle);
				print("Trying to enter", netId);
				TaskLeaveAnyVehicle(ped, 16); -- CARLOCK_LOCKOUT_PLAYER_ONLY = 3
				TriggerServerEvent("ngNoCarJack:TryingToEnterVehicle", netId);
			end
		end
		lastVehicleTriedToEnter = vehicle;
		Citizen.Wait(0);
	end
end);