RegisterNetEvent("AbdulrahmanGG:maxVehicleMods", function()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)

    if vehicle == 0 then
        ESX.ShowNotification(_U("not_in_vehicle"))
        return
    end

    SetVehicleModKit(vehicle, 0)

    SetVehicleMod(vehicle, 11, GetNumVehicleMods(vehicle, 11) - 1, false) -- Engine
    SetVehicleMod(vehicle, 12, GetNumVehicleMods(vehicle, 12) - 1, false) -- Brakes
    SetVehicleMod(vehicle, 13, GetNumVehicleMods(vehicle, 13) - 1, false) -- Transmission
    SetVehicleMod(vehicle, 15, GetNumVehicleMods(vehicle, 15) - 1, false) -- Suspension
    SetVehicleMod(vehicle, 16, GetNumVehicleMods(vehicle, 16) - 1, false) -- Armor

    ToggleVehicleMod(vehicle, 18, true)                                   -- Turbo

    SetVehicleTyresCanBurst(vehicle, false)
    SetVehicleWindowTint(vehicle, 1)
    SetVehicleFixed(vehicle)
    SetVehicleDirtLevel(vehicle, 0.0)

    ESX.ShowNotification(_U("max_vehicle_mods"))
end)