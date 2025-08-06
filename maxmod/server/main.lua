local function detectFramework()
    if Config.Framework == "auto" then
        if GetResourceState("es_extended") == "started" then
            return "esx"
        else
            return "standalone"
        end
    else
        return Config.Framework
    end
end


RegisterCommand(Config.MaxVehicleModsCommand, function(source, args, rawCommand)
    local framework = detectFramework()

    local targetId = tonumber(args[1]) or source

    if framework == "esx" then
        local xPlayer = ESX.GetPlayerFromId(source)

        if not xPlayer then
            print(U_("player_not_found"))
            return
        end

        if targetId ~= source and xPlayer.getGroup() ~= Config.AdminGroup then
            TriggerClientEvent('chat:addMessage', source, {
                args = { "SYSTEM", _U("no_permission") }
            })
            return
        end

        local xTarget = ESX.GetPlayerFromId(targetId)
        if not xTarget then
            TriggerClientEvent('chat:addMessage', source, {
                args = { "SYSTEM", _U("player_not_found") }
            })
            return
        end

        if xPlayer.getGroup() ~= "superadmin" then
            TriggerClientEvent('chat:addMessage', source, {
                args = { "SYSTEM", _U("no_permission") }
            })
            return
        end

        TriggerClientEvent("AbdulrahmanGG:maxVehicleMods", source)
    elseif framework == "standalone" then
        if IsPlayerAceAllowed(source, Config.AcePermission) then
            TriggerClientEvent("AbdulrahmanGG:maxVehicleMods", source)
        else
            TriggerClientEvent('chat:addMessage', source, {
                args = { "SYSTEM", _U("no_permission") }
            })
        end
    else
        print("Error: Unsupported framework detected. Please set Config.Framework to 'esx' or 'standalone'.")
    end
end, false)
