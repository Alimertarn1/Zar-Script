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
