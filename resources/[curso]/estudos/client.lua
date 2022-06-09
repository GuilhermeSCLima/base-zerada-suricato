-- Primeiro nativo (Explosões)
-- AddExplosion(20.0, 15.0, 10.0, 1, 0.0, true, false, 2.0)

-- Conceitos Basicos;
-- Referecias de entidades;
-- HashKey: texto em formato de numero

-- Entidades: Veiculos, Peds, Objetos, Blips, Markers, Props, Particulas, Emissores, etc.
-- Peds: São bonecos do proprio game
-- Props: São objetos do jogo

-- Referenciar uma entidade

-- hash é igual DNA?
-- Não hash é apenas o nome;

-- local hash = GetHashKey('prop_acc_guitar_01')

-- Para descobrir o DNA de qualquer entidade se utiliza uma nativa

-- local ped = PlayerPedId() -- Retorna a entidade do player

-- SetEntityCoords(
--   ped,
--   20.0,
--   20.0,
--   10.0
-- )

-- Dar armas para o ped

-- local ped = PlayerPedId()

--[=[ GiveWeaponToPed(
	ped, 
	GetHashKey('weapon_raypistol') --[[ Hash ]], 
	255 --[[ integer ]], 
	false --[[ boolean ]], 
	true --[[ boolean ]]
)

local player = PlayerId()

-- Player possui um DNA
-- Player é diferent de Ped

SetPlayerWantedLevel(
	player --[[ Player ]], 
	0 --[[ integer ]]
)

SetPlayerWantedLevelNow(
	player --[[ Player ]], 
	true --[[ boolean ]]
) ]=]

-- Alterar a opacidade do ped

--[=[ SetEntityAlpha(
	ped --[[ Entity ]], 
	99 --[[ integer ]], 
) ]=]

-- Deixar o ped invisivel
--[[ 
SetEntityVisible(
  ped,
  false
) ]]


-- Invencibilidade

-- SetEntityInvincible(ped, true)

-- GiveWeaponComponentToPed(
--   ped,
--   GetHashKey('weapon_assaultrifle_mk2'),
--   GetHashKey('COMPONENT_CARBINERIFLE_MK2_CAMO_IND_01'),
-- )

-- Registro de comandos

-- RegisterCommand('removerarmas', function() 
--   RemoveAllPedWeapons(
-- 	  ped --[[ Ped ]], 
--     true
--   )
-- end)

-- RegisterCommand('armas', function() 
--   GiveWeaponToPed(
--     ped, 
--     GetHashKey('weapon_carbinerifle_mk2') --[[ Hash ]], 
--     255 --[[ integer ]], 
--     false --[[ boolean ]], 
--     true --[[ boolean ]]
--   )
-- end)

-- RegisterCommand('attachs', function() 
--   local weaponHash = GetHashKey('weapon_carbinerifle_mk2')

--   GiveWeaponComponentToPed(ped, weaponHash, GetHashKey('COMPONENT_CARBINERIFLE_MK2_CLIP_02'))
--   GiveWeaponComponentToPed(ped, weaponHash, GetHashKey('COMPONENT_CARBINERIFLE_MK2_CLIP_FMJ'))
--   GiveWeaponComponentToPed(ped, weaponHash, GetHashKey('COMPONENT_AT_AR_AFGRIP_02'))
--   GiveWeaponComponentToPed(ped, weaponHash, GetHashKey('COMPONENT_AT_AR_FLSH'))
--   GiveWeaponComponentToPed(ped, weaponHash, GetHashKey('COMPONENT_AT_SIGHTS'))
--   GiveWeaponComponentToPed(ped, weaponHash, GetHashKey('COMPONENT_AT_SCOPE_MEDIUM_MK2'))
--   GiveWeaponComponentToPed(ped, weaponHash, GetHashKey('COMPONENT_AT_AR_SUPP'))
--   GiveWeaponComponentToPed(ped, weaponHash, GetHashKey('COMPONENT_AT_MUZZLE_01'))
--   GiveWeaponComponentToPed(ped, weaponHash, GetHashKey('COMPONENT_AT_MUZZLE_02'))
--   GiveWeaponComponentToPed(ped, weaponHash, GetHashKey('COMPONENT_AT_MUZZLE_03'))
--   GiveWeaponComponentToPed(ped, weaponHash, GetHashKey('COMPONENT_AT_MUZZLE_04'))
--   GiveWeaponComponentToPed(ped, weaponHash, GetHashKey('COMPONENT_AT_MUZZLE_05'))
--   GiveWeaponComponentToPed(ped, weaponHash, GetHashKey('COMPONENT_AT_MUZZLE_06'))
--   GiveWeaponComponentToPed(ped, weaponHash, GetHashKey('COMPONENT_AT_MUZZLE_07'))
--   GiveWeaponComponentToPed(ped, weaponHash, GetHashKey('COMPONENT_AT_CR_BARREL_02'))
--   GiveWeaponComponentToPed(ped, weaponHash, GetHashKey('COMPONENT_CARBINERIFLE_MK2_CAMO_IND_01'))
  
-- end)

-- Registro de comandos com parametros

-- Source: Não trabalha-se em client, portanto quando formos paa a seção de server saberemos sua utilidade
-- args: Tabela que contem todos os argumentos do comando enfileirados como valores na tabela, exemplo: /debug 1 2 3 feliz; args: {'1', '2', '3', 'feliz'}
-- RawCommand: Tudo que é digitado no comando incluindo argumentos; exemplo: /debug 1 2 3 feliz; RawCommand: debug 1 2 3 feliz

-- json.encode(analisar tabelas)

-- RegisterCommand('debug', function(source,args,rawCommand)
--   print(args) -- table
--   print(rawCommand) -- string (Comando cru, ou seja tudo que foi digitado junto com o comando, ex.: debug algo aki)

-- end)

-- RegisterCommand('tpcds', function(source, args)
--   local ped = PlayerPedId()
--   local x,y,z = tonumber(args[1]), tonumber(args[2]), tonumber(argßs[3])

--   SetEntityCoords(ped, x, y, z)
-- end)

--[=[ 
RegisterCommand('delete', function()
  DeleteEntity(vehicle)
end)

RegisterCommand('ped', function()
  local pedHash = GetHashKey('a_m_m_afriamer_01')
  
  RequestModel(pedHash)
  
  while not HasModelLoaded(pedHash) do
    Wait(1)
  end
  
  global CreatedPed = CreatePed(
    4 --[[ integer ]], 
		pedHash --[[ Hash ]], 
		10.2 --[[ number ]], 
		15.5 --[[ number ]], 
		20.6 --[[ number ]], 
		20 --[[ number ]], 
		true --[[ boolean ]], 
		false --[[ boolean ]]
	)
  
  
  GiveWeaponToPed(CreatedPed, GetHashKey('weapon_assaultrifle_mk2'), 255, false, true)
  GiveWeaponComponentToPed(CreatedPed, GetHashKey('weapon_assaultrifle_mk2'), GetHashKey('COMPONENT_ASSAULTRIFLE_MK2_CAMO_IND_01'))
  
  
end)

]=]

RegisterCommand('kuruma', function()
  local currentPed = PlayerPedId()
  local vehicleHash = GetHashKey('kuruma')
  local coords = GetEntityCoords(ped)
  local h = GetEntityHeading(currentPed)

  RequestModel(vehicleHash)

  while not HasModelLoaded(vehicleHash) do
    Wait(1)
  end

  global vehicle = CreateVehicle(
    vehicleHash, 
    coords,
    h, 
    true, 
    false
  )

  SetPedIntoVehicle(
    currentPed, 
    vehicle, 
    -1
  )

  SetVehicleCustomPrimaryColour(
    vehicle --[[ Vehicle ]], 
    148 --[[ integer ]], 
    0 --[[ integer ]], 
    211 --[[ integer ]]
  )

  SetVehicleNeonLightEnabled(vehicle, 0, true)
  SetVehicleNeonLightEnabled(vehicle, 1, true)
  SetVehicleNeonLightEnabled(vehicle, 2, true)
  SetVehicleNeonLightEnabled(vehicle, 3, true)

  SetVehicleNeonLightsColour(vehicle, 148, 0, 211)

  SetModelAsNoLongerNeeded(vehicleHash)

  SetVehicleWindowTint(
    vehicle --[[ Vehicle ]], 
    3 --[[ integer ]]
  )


end)