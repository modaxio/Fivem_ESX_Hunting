ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded',
                function(xPlayer) ESX.PlayerData = xPlayer end)

local animals = {
    [1] = {
        model = "a_c_deer",
        hash = -664053099,
        item = "steak",
        name = "Deer Meat",
        id = 35,
        profit = 140
    },
    [2] = {
        model = "a_c_pig",
        hash = -1323586730,
        item = "steak",
        name = "Pig Meat",
        id = 36,
        profit = 50
    },
    [3] = {
        model = "a_c_boar",
        hash = -832573324,
        item = "steak",
        name = "Boar Meat",
        id = 37,
        profit = 120
    },
    [4] = {
        model = "a_c_mtlion",
        hash = 307287994,
        item = "steak",
        name = "Mountain Lion Meat",
        id = 38,
        profit = 222
    },
    [5] = {
        model = "a_c_cow",
        hash = -50684386,
        item = "steak",
        name = "Cow Meat",
        id = 39,
        profit = 32
    },
    [6] = {
        model = "a_c_coyote",
        hash = 1682622302,
        item = "steak",
        name = "Coyote Meat",
        id = 40,
        profit = 170
    },
    [7] = {
        model = "a_c_rabbit_01",
        hash = -541762431,
        item = "steak",
        name = "Rabbit Meat",
        id = 41,
        profit = 80
    },
    [8] = {
        model = "a_c_pigeon",
        hash = 111281960,
        item = "steak",
        name = "Bird Meat",
        id = 42,
        profit = 75
    },
    [9] = {
        model = "a_c_seagull",
        hash = -745300483,
        item = "steak",
        name = "Seagull Meat",
        id = 43,
        profit = 70
    }
}

--[[
    local pay = math.floor(itemcount*animals[i].id*animals[i].profit/4)
    math.floor will put the following values into a math equation
    itemcount * animals[i].id * animals[i].profit / 4
    let's say the itemcount = 25
    25 * animals[i].id animals[i].profit / 4 = $5,468

    More money? Change the "/4" to "/2" and that will make it $10,936
    Or remove "/2"
]]

RegisterServerEvent("hunting:sell")
AddEventHandler("hunting:sell", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    local dearcount = xPlayer.getInventoryItem('meatdeer').count
    local dearname = xPlayer.getInventoryItem('meatdeer').name

    local pigcount = xPlayer.getInventoryItem('meatpig').count
    local pigname = xPlayer.getInventoryItem('meatpig').name

    local lioncount = xPlayer.getInventoryItem('meatlion').count
    local lionname = xPlayer.getInventoryItem('meatlion').name

    local cowcount = xPlayer.getInventoryItem('meatcow').count
    local cowname = xPlayer.getInventoryItem('meatcow').name

    local rabbitcount = xPlayer.getInventoryItem('meatrabbit').count
    local rabbitname = xPlayer.getInventoryItem('meatrabbit').name

    local birdcount = xPlayer.getInventoryItem('meatbird').count
    local birdname = xPlayer.getInventoryItem('meatbird').name

    local coyotecount = xPlayer.getInventoryItem('meatcoyote').count
    local coyotename = xPlayer.getInventoryItem('meatcoyote').name

    local all = dearcount, pigcount, lioncount, cowcount, rabbitcount,
                birdcount, coyotecount

    if all >= 1 then
        if dearcount >= 1 then
            for i = 1, #animals do
                if dearname == animals[i].item then
                    local pay = math.floor(
                                    dearcount * animals[i].id *
                                        animals[i].profit / 4)
                    xPlayer.removeInventoryItem(animals[i].item, dearcount)
                    TriggerClientEvent('esx:showNotification', source,
                                       "You sold x" .. dearcount .. " " ..
                                           animals[i].name .. " For ~g~$" .. pay)
                    xPlayer.addMoney(pay)
                end
            end
        end

        if pigcount >= 1 then
            for i = 1, #animals do
                if pigname == animals[i].item then
                    local pay = math.floor(
                                    pigcount * animals[i].id * animals[i].profit /
                                        4)
                    xPlayer.removeInventoryItem(animals[i].item, pigcount)
                    TriggerClientEvent('esx:showNotification', source,
                                       "You sold x" .. pigcount .. " " ..
                                           animals[i].name .. " For ~g~$" .. pay)
                    xPlayer.addMoney(pay)
                end
            end
        end

        if lioncount >= 1 then
            for i = 1, #animals do
                if lionname == animals[i].item then
                    local pay = math.floor(
                                    lioncount * animals[i].id *
                                        animals[i].profit / 4)
                    xPlayer.removeInventoryItem(animals[i].item, lioncount)
                    TriggerClientEvent('esx:showNotification', source,
                                       "You sold x" .. lioncount .. " " ..
                                           animals[i].name .. " For ~g~$" .. pay)
                    xPlayer.addMoney(pay)
                end
            end
        end

        if cowcount >= 1 then
            for i = 1, #animals do
                if cowname == animals[i].item then
                    local pay = math.floor(
                                    cowcount * animals[i].id * animals[i].profit /
                                        4)
                    xPlayer.removeInventoryItem(animals[i].item, cowcount)
                    TriggerClientEvent('esx:showNotification', source,
                                       "You sold x" .. cowcount .. " " ..
                                           animals[i].name .. " For ~g~$" .. pay)
                    xPlayer.addMoney(pay)
                end
            end
        end

        if rabbitcount >= 1 then
            for i = 1, #animals do
                if rabbitname == animals[i].item then
                    local pay = math.floor(
                                    rabbitcount * animals[i].id *
                                        animals[i].profit / 4)
                    xPlayer.removeInventoryItem(animals[i].item, rabbitcount)
                    TriggerClientEvent('esx:showNotification', source,
                                       "You sold x" .. rabbitcount .. " " ..
                                           animals[i].name .. " For ~g~$" .. pay)
                    xPlayer.addMoney(pay)
                end
            end
        end

        if birdcount >= 1 then
            for i = 1, #animals do
                if birdname == animals[i].item then
                    local pay = math.floor(
                                    birdcount * animals[i].id *
                                        animals[i].profit / 4)
                    xPlayer.removeInventoryItem(animals[i].item, birdcount)
                    TriggerClientEvent('esx:showNotification', source,
                                       "You sold x" .. birdcount .. " " ..
                                           animals[i].name .. " For ~g~$" .. pay)
                    xPlayer.addMoney(pay)
                end
            end
        end

        if coyotecount >= 1 then
            for i = 1, #animals do
                if birdname == animals[i].item then
                    local pay = math.floor(
                                    coyotecount * animals[i].id *
                                        animals[i].profit / 4)
                    xPlayer.removeInventoryItem(animals[i].item, coyotecount)
                    TriggerClientEvent('esx:showNotification', source,
                                       "You sold x" .. coyotecount .. " " ..
                                           animals[i].name .. " For ~g~$" .. pay)
                    xPlayer.addMoney(pay)
                end
            end
        end
    else
        TriggerClientEvent('esx:showNotification', source,
                           "~r~You have no meat, go hunt some animals!")
    end

end)

RegisterServerEvent("hunting:AddItem")
AddEventHandler("hunting:AddItem", function(data, amount)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local data = data
    local amount = amount

    for i = 1, #animals do
        if data == animals[i].id then
            xPlayer.addInventoryItem(animals[i].item, amount)
        end
    end
end)
