local ESX = nil

[[RegisterCommand("ammo", function(args, string)
    ESX.ShowNotification('Munizioni caricate')
    
    local ped  = PlayerPedId()
    
    if GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_PISTOL_MK2") then
    	SetPedAmmo(ped, GetHashKey("WEAPON_PISTOL_MK2"), 250)

    elseif GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_SMG_MK2") then
    	SetPedAmmo(ped, GetHashKey("WEAPON_SMG_MK2"), 250)

    elseif GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_COMBATPDW") then
    	SetPedAmmo(ped, GetHashKey("WEAPON_COMBATPDW"), 250)

    elseif GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_SMG") then
    	SetPedAmmo(ped, GetHashKey("WEAPON_COMBATPDW"), 250)

    elseif GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
    	SetPedAmmo(ped, GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), 250)

    elseif GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_PISTOL") then
    	SetPedAmmo(ped, GetHashKey("WEAPON_PISTOL"), 250)

    elseif GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
    	SetPedAmmo(ped, GetHashKey("WEAPON_CARBINERIFLE_MK2"), 250)

    elseif GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_COMBATPISTOL") then
    	SetPedAmmo(ped, GetHashKey("WEAPON_COMBATPISTOL"), 250)
	end
end, false)--]]

  -- ACCESSORI
RegisterCommand('kit', function()
	--PISTOLA MK2
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CLIP_02"))
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_FLSH_02"))  
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_COMP"))
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_RAIL"))
--SMG MK2
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CLIP_02"))
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_AT_SCOPE_SMALL_SMG_MK2"))
	--CARABINA MK2
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CLIP_02"))
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2")) 
	--AK MK2
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CLIP_02"))
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))

	--PDW
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_COMBATPDW_CLIP_02"))
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_SCOPE_SMALL"))
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_SCOPE_SMALL"))

	--COMBAT
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_COMBATPISTOL_CLIP_02"))   
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))

	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_PISTOL_CLIP_02"))
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))

			--TEK-9
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MACHINEPISTOL"), GetHashKey("COMPONENT_MACHINEPISTOL_CLIP_02"))


	TriggerEvent('Notify', 'aviso',"Vegas Evolved ⚡", 'Accessori applicati.')
end)

-- RIMUOVI ACCESSORI
RegisterCommand('rimuovikit', function()
	--PISTOLA MK2
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CLIP_02"))
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_FLSH_02"))
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_COMP"))
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_RAIL")) 
--SMG MK2
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CLIP_02"))
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_AT_SCOPE_SMALL_SMG_MK2"))
	--CARABINA MK2
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CLIP_02"))
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))
	--AK MK2
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CLIP_02"))
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))  
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))

	--PDW
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_COMBATPDW_CLIP_02"))
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_SCOPE_SMALL"))
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_SCOPE_SMALL"))

	--COMBAT
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_COMBATPISTOL_CLIP_02"))   
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))

	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_PISTOL_CLIP_02"))
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))

	--TEK-9
	RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_MACHINEPISTOL"), GetHashKey("COMPONENT_MACHINEPISTOL_CLIP_02"))

	TriggerEvent('Notify', 'aviso',"Vegas Evolved ⚡", 'Accessori rimossi.')
end)

-- COLORAZIONE ARMI

RegisterCommand("colorazione", function(source, args)
	if args[1] == nil then
		TriggerEvent('chat:addMessage', {color = {0, 255, 0},multiline = false,args = {"[Vegas Evolved ⚡]", " Scegli che colorazione mettere facendo /colorazione numero"}})
	else
		local ped = GetPlayerPed(-1)
		local currentWeaponHash = GetSelectedPedWeapon(ped)
		if args[1] == "1" then
		 SetPedWeaponTintIndex(ped, currentWeaponHash, 1)
		 TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 1 </b>")
		elseif args[1] == "2" then
		 SetPedWeaponTintIndex(ped, currentWeaponHash, 2)
		 TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 2 </b>")
		elseif args[1] == "3" then
		  SetPedWeaponTintIndex(ped, currentWeaponHash, 3)
		  TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 3 </b>")
		elseif args[1] == "4" then
		 SetPedWeaponTintIndex(ped, currentWeaponHash, 4)
		 TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 4 </b>")
		elseif args[1] == "5" then
		 SetPedWeaponTintIndex(ped, currentWeaponHash, 5)
		 TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 5 </b>")
		elseif args[1] == "6" then
		 SetPedWeaponTintIndex(ped, currentWeaponHash, 6)
		 TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 6 </b>")
		elseif args[1] == "7" then
		 SetPedWeaponTintIndex(ped, currentWeaponHash, 7)
		 TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 7 </b>")
		elseif args[1] == "8" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 8)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 8 </b>")
		elseif args[1] == "9" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 9)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 9 </b>")
		elseif args[1] == "10" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 10)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 10 </b>")
		elseif args[1] == "11" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 11)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 11 </b>")
		elseif args[1] == "12" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 12)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 12 </b>")
		elseif args[1] == "13" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 13)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 13 </b>")
		elseif args[1] == "14" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 14)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 14 </b>")
		elseif args[1] == "15" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 15)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 15 </b>")
		elseif args[1] == "16" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 16)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 16 </b>")
		elseif args[1] == "17" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 17)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 17 </b>")
		elseif args[1] == "18" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 18)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 18 </b>")
		elseif args[1] == "19" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 19)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 19 </b>")
		elseif args[1] == "20" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 20)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 20 </b>")
		elseif args[1] == "21" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 21)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 21 </b>")
		elseif args[1] == "22" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 22)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 22 </b>")
		elseif args[1] == "23" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 23)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 23 </b>")
		elseif args[1] == "24" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 24)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 24 </b>")
		elseif args[1] == "25" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 25)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 25 </b>")
		elseif args[1] == "26" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 26)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 26 </b>")
		elseif args[1] == "27" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 27)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 27 </b>")
		elseif args[1] == "28" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 28)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 28 </b>")
		elseif args[1] == "29" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 29)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 29 </b>")
		elseif args[1] == "30" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 30)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 30 </b>")
		elseif args[1] == "31" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 31)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 31 </b>")
		elseif args[1] == "32" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 32)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 32 </b>")
		elseif args[1] == "33" then
			SetPedWeaponTintIndex(ped, currentWeaponHash, 33)
			TriggerEvent('Notify', 'sucesso',"Successo","Hai impostato la colorazione n. <b> 33 </b>")
			TriggerEvent('Notify', 'aviso',"Vegas Evolved ⚡", 'Accessori applicati.')
		end
	end
end, false)


end)


-- Fps Boost --
RegisterCommand("fps",function(source,args)
    if args[1] == "on" then
        SetTimecycleModifier("cinema")
        TriggerEvent("Notify","Aviso", 'FPS BOOSTER',"FPS boost <b>ATTIVATO</b>!")
    elseif args[1] == "off" then
        SetTimecycleModifier("default")
        TriggerEvent("Notify","Aviso", 'FPS BOOSTER',"FPS boost <b>DISATTIVATO</b>!")
    end
end)

-- Id --
RegisterCommand("id",function(source,args)
	TriggerEvent('Notify', 'sucesso',"ID", 'Il tuo Id è <b> ' .. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. ' </b>')
end)


-- LAVORO --
CreateThread(function()
	while ESX == nil do TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) Wait(0) end
	while ESX.GetPlayerData().job == nil do Wait(100) end
	ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  ESX.PlayerData = xPlayer
  PlayerLoaded = true
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  ESX.PlayerData.job = job
end)

RegisterCommand("lavoro",function(source,args)
	if (ESX.PlayerData.job and ESX.PlayerData.job.name == 'unemployed') then
		TriggerEvent('Notify', 'sucesso',"Lavoro", 'Sei un <b>fallito</b> disoccupato!')
	else
	TriggerEvent('Notify', 'sucesso',"Lavoro", 'Il tuo lavoro è <b> ' .. ESX.PlayerData.job.label .. ' </b> con il grado<b> ' .. ESX.PlayerData.job.grade_label .. ' </b>')
	end
end)

--RECOIL--

local recoils = {
	[453432689] = 0.3, -- PISTOL
	[3219281620] = 0.0, -- PISTOL MK2
	[584646201] = 0.1, -- AP PISTOL
	[2578377531] = 0.6, -- PISTOL .50
	[324215364] = 0.2, -- MICRO SMG
	[4024951519] = 0.1, -- ASSAULT SMG
	[3220176749] = 0.2, -- ASSAULT RIFLE
	[2937143193] = 0.1, -- ADVANCED RIFLE
	[2634544996] = 0.1, -- MG
	[2144741730] = 0.1, -- COMBAT MG
	[3686625920] = 0.1, -- COMBAT MG MK2
	[487013001] = 0.9, -- PUMP SHOTGUN



	[961495388] = 0.230, -- ASSAULT RIFLE MK2
	[-2084633992] = 0.100, -- CARBINE RIFLE
	[-86904375] = 0.150, -- CARBINE RIFLE MK2
	[-1768145561] = 0.230, -- SPECIAL CARBINE MK2


	[-1075685676] = 0.0, -- PISTOL MK2
	[1593441988] = 0.150, -- COMBAT PISTOL
	[-1076751822] = 0.180, -- SNS PISTOL
	[-771403250] = 0.180, -- HEAVY PISTOL

	[1432025498] = 0.9, -- PUMP SHOTGUN MK2
	[2017895192] = 0.9, -- SAWNOFF SHOTGUN
	[3800352039] = 0.4, -- ASSAULT SHOTGUN
	[2640438543] = 0.2, -- BULLPUP SHOTGUN
	[911657153] = 0.1, -- STUN GUN
	[100416529] = 0.5, -- SNIPER RIFLE
	[205991906] = 0.7, -- HEAVY SNIPER
	[177293209] = 0.6, -- HEAVY SNIPER MK2
	[856002082] = 1.2, -- REMOTE SNIPER
	[2726580491] = 1.0, -- GRENADE LAUNCHER
	[1305664598] = 1.0, -- GRENADE LAUNCHER SMOKE
	[2982836145] = 0.0, -- RPG
	[1752584910] = 0.0, -- STINGER
	[1119849093] = 0.01, -- MINIGUN
	[3218215474] = 0.2, -- SNS PISTOL
	[1627465347] = 0.1, -- GUSENBERG
	[3523564046] = 0.5, -- HEAVY PISTOL
	[2132975508] = 0.2, -- BULLPUP RIFLE

	[-619010992] = 0.100, -- MACHINE PISTOL
	[736523883] = 0.0, -- SMG
	[2024373456] = 0.01, -- SMG MK2
	[171789620] = 0.01, -- COMBAT PDW

	[-2066285827] = 0.15, -- BULLPUP RIFLE MK2
	[137902532] = 0.4, -- VINTAGE PISTOL
	[2828843422] = 0.7, -- MUSKET
	[984333226] = 0.2, -- HEAVY SHOTGUN
	[3342088282] = 0.3, -- MARKSMAN RIFLE
	[1785463520] = 0.25, -- MARKSMAN RIFLE MK2
	[1672152130] = 0, -- HOMING LAUNCHER
	[1198879012] = 0.9, -- FLARE GUN
	[3696079510] = 0.9, -- MARKSMAN PISTOL
	[1834241177] = 2.4, -- RAILGUN
	[3675956304] = 0.3, -- MACHINE PISTOL
	[3249783761] = 0.6, -- REVOLVER
	[-879347409] = 0.6, -- REVOLVER MK2
	[4019527611] = 0.7, -- DOUBLE BARREL SHOTGUN
	[1649403952] = 0.3, -- COMPACT RIFLE
	[317205821] = 0.2, -- AUTO SHOTGUN
	[125959754] = 0.5, -- COMPACT LAUNCHER
	[3173288789] = 0.1, -- MINI SMG
}


Citizen.CreateThread(function()
	while true do
			Citizen.Wait(1)
			if IsPedShooting(PlayerPedId()) then
					local wep = GetSelectedPedWeapon(PlayerPedId())
					if recoils[wep] and recoils[wep] ~= 0 then
							Wait(1)
							p = GetGameplayCamRelativePitch()
							if not IsPedInAnyHeli(PlayerPedId()) then
									SetGameplayCamRelativePitch(p+recoils[wep], 0.99)
							end
					end
			end

			local machinepistol = HasPedBeenDamagedByWeapon(PlayerPedId(), -619010992, 0) -- MACHINE PISTOL
			local hsByAk = HasPedBeenDamagedByWeapon(PlayerPedId(), 961495388, 0) -- AK MK2
			local pistola = HasPedBeenDamagedByWeapon(PlayerPedId(), 453432689, 0) -- PISTOLA 9mm
			local pistolamk2 = HasPedBeenDamagedByWeapon(PlayerPedId(), 3219281620, 0) --PISTOLA MK2
			local combat = HasPedBeenDamagedByWeapon(PlayerPedId(), 1593441988, 0) --PISTOLA MK2
			local pdw = HasPedBeenDamagedByWeapon(PlayerPedId(), 171789620, 0) -- PDW
			local hsByMpx = HasPedBeenDamagedByWeapon(PlayerPedId(), -86904375, 0) -- CARABINA MK2
			local hsBySMG = HasPedBeenDamagedByWeapon(PlayerPedId(), 2024373456, 0) -- SMG mk2
			local hsByG3 = HasPedBeenDamagedByWeapon(PlayerPedId(), -1768145561, 0) -- CARABINA SPECIALE Mk2

			local a, b = GetPedLastDamageBone(PlayerPedId())
			if a and b == 31086 then
					if hsByAk or hsByG3 or pistolamk2 or machinepistol or pistola or pdw or combat or hsBySMG or hsByMpx then
							SetEntityHealth(PlayerPedId(),  0)
					end
					a, b, hsByAk, pistolamk2, hsByMpx, hsByG3, hsBySMG, machinepistol, pistola, pdw, combat = nil, nil, nil, nil, nil, nil
			end
	end
end)