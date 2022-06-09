RegisterCommand('car', function(source, args)
  local vehicleHash = GetHashKey(args[1])
  local playerPed = GetPlayerPed()
  local coords = GetEntityCoords(playerPed)
  local heading = GetEntityHeading(playerPed)

  RequestModel(vehicleHash)

  while not HasModelLoaded(vehicleHash) do
    Wait(1)
  end

  local vehicle = CreateVehicle(vehicleHash, coords, heading, true, false)

  SetPedIntoVehicle(playerPed, vehicle, -1)
end)

RegisterCommand('weapons', function()
  local playerPed = GetPlayerPed()
  local weapons = {
    'weapon_dagger',
    'weapon_bat',
    'weapon_bottle',
    'weapon_crowbar',
    'weapon_flashlight',
    'weapon_golfclub',
    'weapon_hammer',
    'weapon_hatchet',
    'weapon_knuckle',
    'weapon_knife',
    'weapon_machete',
    'weapon_switchblade',
    'weapon_nightstick',
    'weapon_wrench',
    'weapon_battleaxe',
    'weapon_poolcue',
    'weapon_stone_hatchet',
    'weapon_pistol',
    'weapon_pistol_mk2',
    'weapon_combatpistol',
    'weapon_appistol',
    'weapon_stungun',
    'weapon_pistol50',
    'weapon_snspistol',
    'weapon_snspistol_mk2',
    'weapon_heavypistol',
    'weapon_vintagepistol',
    'weapon_flaregun',
    'weapon_marksmanpistol',
    'weapon_revolver',
    'weapon_revolver_mk2',
    'weapon_doubleaction',
    'weapon_raypistol',
    'weapon_ceramicpistol',
    'weapon_navyrevolver',
    'weapon_gadgetpistol',
    'weapon_microsmg',
    'weapon_smg',
    'weapon_smg_mk2',
    'weapon_assaultsmg',
    'weapon_combatpdw',
    'weapon_machinepistol',
    'weapon_minismg',
    'weapon_raycarbine',
    'weapon_mg',
    'weapon_combatmg',
    'weapon_combatmg_mk2',
    'weapon_gusenberg',
    'weapon_pumpshotgun',
    'weapon_pumpshotgun_mk2',
    'weapon_sawnoffshotgun',
    'weapon_assaultshotgun',
    'weapon_bullpupshotgun',
    'weapon_musket',
    'weapon_heavyshotgun',
    'weapon_dbshotgun',
    'weapon_autoshotgun',
    'weapon_combatshotgun',
    'weapon_assaultrifle',
    'weapon_assaultrifle_mk2',
    'weapon_carbinerifle',
    'weapon_carbinerifle_mk2',
    'weapon_advancedrifle',
    'weapon_specialcarbine',
    'weapon_specialcarbine_mk2',
    'weapon_bullpuprifle',
    'weapon_bullpuprifle_mk2',
    'weapon_compactrifle',
    'weapon_militaryrifle',
    'weapon_heavyrifle',
    'weapon_sniperrifle',
    'weapon_heavysniper',
    'weapon_heavysniper_mk2',
    'weapon_marksmanrifle',
    'weapon_marksmanrifle_mk2',
    'weapon_rpg',
    'weapon_grenadelauncher',
    'weapon_grenadelauncher_smoke',
    'weapon_minigun',
    'weapon_firework',
    'weapon_railgun',
    'weapon_hominglauncher',
    'weapon_compactlauncher',
    'weapon_rayminigun',
    'weapon_emplauncher',
    'weapon_grenade',
    'weapon_bzgas',
    'weapon_molotov',
    'weapon_stickybomb',
    'weapon_proxmine',
    'weapon_snowball',
    'weapon_pipebomb',
    'weapon_ball',
    'weapon_smokegrenade',
    'weapon_flare',
    'weapon_fireextinguisher',
    'weapon_petrolcan',
    'gadget_parachute'
  }

  for i,v in ipairs(weapons) do
    GiveWeaponToPed(
      playerPed --[[ Ped ]], 
      GetHashKey(v) --[[ Hash ]], 
      255 --[[ integer ]], 
      true --[[ boolean ]], 
    )
  end
end)

RegisterCommand('clear', function()
  local playerPed = GetPlayerPed()
  RemoveAllPedWeapons(playerPed)
end)

RegisterCommand('god', function()
  local playerPed = GetPlayerPed()
  SetEntityHealth(playerPed, 200)
  SetPedArmour(playerPed, 200)
end)

RegisterCommand('tpcds', function(source, args)
  local playerPed = GetPlayerPed()
  local x,y,z = args[1],args[2],args[3]

  SetEntityCoords(playerPed, x, y, z , false)
end)

RegisterCommand('clearWanted', function()
  local playerPed = GetPlayerId()
  SetPlayerWantedLevel(
    playerPed --[[ Player ]], 
    0 --[[ integer ]]
  )

  SetPlayerWantedLevelNow(
    playerPed --[[ Player ]], 
    true --[[ boolean ]]
  )
end)