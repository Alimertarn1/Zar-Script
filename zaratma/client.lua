RegisterCommand('zarat12', function(source, args, rawCommand)
    local number = 0
    number = math.random(1,12)
    
    
    loadAnimDict("anim@mp_player_intcelebrationmale@wank")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@wank", "wank", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        Citizen.Wait(1500)
        ClearPedTasks(GetPlayerPed(-1))
        TriggerServerEvent('3dme:shareDisplay', 'Atılan Zar 1/12: ' .. number)
    end)
    
    function loadAnimDict(dict)
        while not HasAnimDictLoaded(dict) do
        RequestAnimDict( dict )
        Citizen.Wait(5)
    end
end

RegisterCommand('zarat6', function(source, args, rawCommand)
    local number = 0
    number = math.random(1,6)
    
    
    loadAnimDict("anim@mp_player_intcelebrationmale@wank")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@wank", "wank", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        Citizen.Wait(1500)
        ClearPedTasks(GetPlayerPed(-1))
        TriggerServerEvent('3dme:shareDisplay', 'Atılan Zar 1/6: ' .. number)
    end)
    
    function loadAnimDict(dict)
        while not HasAnimDictLoaded(dict) do
        RequestAnimDict( dict )
        Citizen.Wait(5)
    end
end
-------------------------------Tekeryan--------------------------------------------------
Citizen.CreateThread(function()
    local angle = 0.0
    local speed = 0.0
    while true do
        Citizen.Wait(0)
        local veh = GetVehiclePedIsUsing(PlayerPedId())
        if DoesEntityExist(veh) then
            local tangle = GetVehicleSteeringAngle(veh)
            if tangle > 10.0 or tangle < -10.0 then
                angle = tangle
            end
            speed = GetEntitySpeed(veh)
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), true)
            if speed < 0.1 and DoesEntityExist(vehicle) and not GetIsTaskActive(PlayerPedId(), 151) and not GetIsVehicleEngineRunning(vehicle) then
                SetVehicleSteeringAngle(GetVehiclePedIsIn(PlayerPedId(), true), angle)
            end
        end
    end
end)