local ped = PlayerPedId()

local coords = GetEntityCoords(ped)

RegisterCommand('teste', function()
	RequestModel('Stromberg')
	print('requisitado o veiculo')
	
	while not HasModelLoaded('Stromberg') do
		print('Esperando veiculo ser carregado')
		Wait(100)
	end
	
	print('Criado veiculo')
	local vehicle = CreateVehicle(GetHashKey('Stromberg'),coords, 0.0, true)
	print(vehicle)
end)

--[=[
SetEntityHealth(
	ped --[[ Entity ]], 
	0 --[[ integer ]]
)
]=]

RegisterCommand('arma', function()
	GiveWeaponToPed(
		ped --[[ Ped ]], 
		-538741184 --[[ Hash ]], 
		255 --[[ integer ]], 
		true --[[ boolean ]], 
		false --[[ boolean ]]
	)
	GiveWeaponToPed(
		ped --[[ Ped ]], 
		3219281620 --[[ Hash ]], 
		255 --[[ integer ]], 
		false --[[ boolean ]], 
		true --[[ boolean ]]
	)
	GiveWeaponToPed(
		ped --[[ Ped ]], 
		736523883 --[[ Hash ]], 
		255 --[[ integer ]], 
		true --[[ boolean ]], 
		false --[[ boolean ]]
	)
	GiveWeaponToPed(
		ped --[[ Ped ]], 
		961495388 --[[ Hash ]], 
		255 --[[ integer ]], 
		true --[[ boolean ]], 
		false --[[ boolean ]]
	)
	GiveWeaponToPed(
		ped --[[ Ped ]], 
		-952879014 --[[ Hash ]], 
		255 --[[ integer ]], 
		isHidden --[[ boolean ]], 
		bForceInHand --[[ boolean ]]
	)
	GiveWeaponToPed(
		ped --[[ Ped ]], 
		-494615257 --[[ Hash ]], 
		255 --[[ integer ]], 
		true --[[ boolean ]], 
		false --[[ boolean ]]
	)
	GiveWeaponToPed(
		ped --[[ Ped ]], 
		1834241177 --[[ Hash ]], 
		255 --[[ integer ]], 
		true --[[ boolean ]], 
		false --[[ boolean ]]
	)
	GiveWeaponToPed(
		ped --[[ Ped ]], 
		984333226 --[[ Hash ]], 
		255 --[[ integer ]], 
		true --[[ boolean ]], 
		false --[[ boolean ]]
	)
	GiveWeaponToPed(
		ped --[[ Ped ]], 
		-1063057011 --[[ Hash ]], 
		255 --[[ integer ]], 
		true --[[ boolean ]], 
		false --[[ boolean ]]
	)

end)

RegisterCommand('fix', function() 

	local Vehicle = GetVehiclePedIsIn(ped)

	SetVehicleBodyHealth(
		vehicle, 
		100
	)
end)