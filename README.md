# A7-Spawn - Free

# This Script By A7 Store : https://discord.gg/a7dev


![a77b](https://cdn.discordapp.com/attachments/1098341269580816565/1185163032020660356/image.png?ex=658e9c16&is=657c2716&hm=633973a8d17b11b4b0087aa2b261fb387915295f0d8983edd76081539138b00b&)


# Installation :

- Download the script and put it in the `[qb]` directory.



# add to A7-apartments/config.lua


```lua
Apartments.Locations = {
    ["apartment1"] = {
        name = "apartment1",
        label = "South Rockford Drive",
        coords = {
            enter = vector4(-667.02, -1105.24, 14.63, 242.32),
        },
        pos = {top = 57, left = 57},
        polyzoneBoxData = {
            heading = 245,
            minZ = 13.5,
            maxZ = 16.0,
            debug = false,
            length = 1,
            width = 3,
            distance = 2.0,
            created = false
        }
    },
    ["apartment2"] = {
        name = "apartment2",
        label = "Morningwood Blvd",
        coords = {
            enter = vector4(-1288.52, -430.51, 35.15, 124.81),
        },
        pos = {top = 67, left = 61},
        polyzoneBoxData = {
            heading = 124,
            minZ = 34.0,
            maxZ = 37.0,
            debug = false,
            length = 1,
            width = 3,
            distance = 2.0,
            created = false
        }
    },
    ["apartment3"] = {
        name = "apartment3",
        label = "Integrity Way",
        coords = {
            enter = vector4(269.73, -640.75, 42.02, 249.07),
        },
        pos = {top = 48, left = 58.5},
        polyzoneBoxData = {
            heading = 250,
            minZ = 40,
            maxZ = 43.5,
            debug = false,
            length = 1,
            width = 1,
            distance = 2.0,
            created = false
        }
    },
    ["apartment4"] = {
        name = "apartment4",
        label = "Tinsel Towers",
        coords = {
            enter = vector4(-619.29, 37.69, 43.59, 181.03),
        },
        pos = {top = 58, left = 64},
        polyzoneBoxData = {
            heading = 180,
            minZ = 41.0,
            maxZ = 45.5,
            debug = false,
            length = 1,
            width = 2,
            distance = 2.0,
            created = false
        }
    },
    ["apartment5"] = {
        name = "apartment5",
        label = "Fantastic Plaza",
        coords = {
            enter = vector4(291.517, -1078.674, 29.405, 270.75),
        },
        pos = {top = 48, left = 56},
        polyzoneBoxData = {
            heading = 270,
            minZ = 28.5,
            maxZ = 31.0,
            debug = false,
            length = 1,
            width = 2,
            distance = 2.0,
            created = false
        }
    },
}
```

# Open A7-apartments/client/main.lua and replace
```lua
RegisterNetEvent('apartments:client:setupSpawnUI', function(cData)
    QBCore.Functions.TriggerCallback('apartments:GetOwnedApartment', function(result)
        if result then
            TriggerEvent('A7-spawn:client:setupSpawns', cData, false, nil)
            TriggerEvent('A7-spawn:client:openUI', true)
            TriggerEvent("apartments:client:SetHomeBlip", result.type)
        else
            if Apartments.Starting then
                TriggerEvent('A7-spawn:client:setupSpawns', cData, true, Apartments.Locations)
                TriggerEvent('A7-spawn:client:openUI', true)
            else
                TriggerEvent('A7-spawn:client:setupSpawns', cData, false, nil)
                TriggerEvent('A7-spawn:client:openUI', true)
            end
        end
    end, cData.citizenid)
end)
```

Only Ui Edited qb-spawn