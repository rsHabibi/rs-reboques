Config = {}

-- [[ CRÉDITOS: @RSHABIBI & AZORSHOP ]] --

Config.RefoundPrice = 250
Config.FrameWork = 'QBCore' -- ESX ou QBCore
Config.UseTarget = true -- Definido como true para usar qb-target
Config.TargetType = 'qb-target' -- 'qb-target' ou 'ox_target'

Config.TrailerShop = {
    [1] = {
        npccoords = vector3(-247.51, 6213.35, 31.94),
        heading = 120.0,
        ped = 'a_f_m_downtown_01',
        job = 'none',
        trailertobuy = {
            {
                label = 'Reboque de Barcos',
                name = 'boattrailer',
                price = 250,
                coordsspawn = vector3(-251.8, 6223.12, 31.49),
                heading = 311.34
            },
            {
                label = 'Reboque de Carros',
                name = 'trailersmall',
                price = 250,
                coordsspawn = vector3(-251.09, 6223.35, 32.49),
                heading = 311.34
            }
        }
    }
}

Config.VehicleCanTrail = {
    { name = 'GUARDIAN', class = { 8 } },
    { name = 'SQUADDIE', class = { 8 } },
    { name = 'BENSON', class = { 8 } },
    { name = 'EVERON', class = { 8 } },
    { name = 'TITAN', class = { 8 } },
    { name = 'SANDKING', class = { 8 } },
    { name = 'SANDKIN2', class = { 8 } },
    { name = 'DUBSTA3', class = { 8 } },
    { name = 'BOBCATXL', class = { 8 } },
    { name = 'BOATTRAILER', class = { 14 } },
    {
        name = 'WASTLNDR',
        class = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 }
    },
    {
        name = 'TRAILER',
        class = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 }
    }
}

Config.Lang = {
    ['TrailerNotFind'] = 'Reboque não encontrado',
    ['RampeAlreadySet'] = 'Já existe uma rampa acoplada',
    ['NoVehicleSet'] = 'Nenhum veículo acoplado encontrado',
    ['CantSetThisType'] = 'Não podes acoplar este tipo de veículo neste reboque',
    ['NotGoodJob'] = 'Não tens a profissão necessária',
    ['PressToOpen'] = 'Pressiona E para abrir o menu',
    ['OpenTarget'] = 'Abrir Loja de Reboques',
    ['YouBuy'] = 'Alugaste: ',
    ['For'] = 'Por: ',
    ['CantBuy'] = 'Não podes comprar isto',
    ['BuyFor'] = 'Alugar por: ',
    ['Blip'] = 'Aluguer de Reboques',
    ['NotInVehicle'] = 'Não estás dentro de um veículo',
    ['refoundTrailer'] = 'Devolver Reboque'
}

Config.SendNotification = function(msg)
    if Config.FrameWork == 'ESX' then
        ESX.ShowNotification(msg)
    elseif Config.FrameWork == 'QBCore' then
        exports['qb-core']:GetCoreObject().Functions.Notify(msg, 'primary')
    end
end

Config.ShowHelpNotification = function(msg)
    if Config.FrameWork == 'ESX' then
        ESX.ShowHelpNotification(msg)
    elseif Config.FrameWork == 'QBCore' then
        exports['qb-core']:GetCoreObject().Functions.Notify(msg, 'primary')
    end
end

Config.GetJob = function()
    if Config.FrameWork == 'ESX' then
        return ESX.PlayerData.job.name
    elseif Config.FrameWork == 'QBCore' then
        return exports['qb-core']:GetCoreObject().Functions.GetPlayerData().job.name
    end
end

Config.Command = {
    ['attachtrailer'] = 'acoplar',
    ['detachtrailer'] = 'desacoplar',

    -- TR2 TRAILER
    ['openrampetr2'] = 'abrirrampa',
    ['opentrunktr2'] = 'abrirbagageira',
    ['closerampetr2'] = 'fecharrampa',
    ['closetrunktr2'] = 'fecharbagageira'
}
