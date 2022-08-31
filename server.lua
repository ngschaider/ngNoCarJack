RegisterNetEvent("ngNoCarJack:TryingToEnterVehicle", function(netId)
	local vehicle = NetworkGetEntityFromNetworkId(netId);
	if DoesEntityExist(vehicle) then
		print("Locking", netId);
		SetVehicleDoorsLocked(vehicle, 3); -- CARLOCK_LOCKOUT_PLAYER_ONLY = 3
		--[[if GetVehicleType(vehicle) == "bike" then
			Citizen.CreateThread(function()
				Citizen.Wait(2000);
				
				local ped = GetPlayerPed(source);
				TaskLeaveVehicle(ped, vehicle, 16);
			end);
		end]]
	end
end);