local QBCore = exports['A7-core']:GetCoreObject()

QBCore.Functions.CreateCallback('A7-spawn:server:getOwnedHouses', function(_, cb, cid)
    if cid ~= nil then
        local houses = exports.oxmysql:executeSync('SELECT * FROM player_houses WHERE citizenid = ?', {cid})
        if houses[1] ~= nil then
            cb(houses)
        else
            cb(nil)
        end
    else
        cb(nil)
    end
end)

-- QBCore#4011 -- discord.gg/qbcoreframework -- Only Buy From Here