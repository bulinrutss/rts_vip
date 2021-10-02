-- NÃO RETIRE OS CRÉDITOS / NÃO RETIRE OS CRÉDITOS / NÃO RETIRE OS CRÉDITOS / NÃO RETIRE OS CRÉDITOS / NÃO RETIRE OS CRÉDITOS / NÃO RETIRE OS CRÉDITOS
-- TODOS OS DIREITOS AO CRIADOR  'Rutss.Dev'
-- Url 'https://discord.gg/AbjS8gZ'
-- Versão 'vRPEX'
----------------------------------------------------------------------------------------------------------------------
-------------------------------------        VARIÁVEIS       ---------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- WEBHOOK
-----------------------------------------------------------------------------------------------------------------------------------------
local webhooksetvip = "https://discord.com/api/webhooks/833719082087481395/svZCqGJMb-kBKCjjdg2tKk3n0FFHKvMfY7pNtBg1fNXVzr7QJAhkNc9taWQElBstn6TR"
-----------------------------------------------------------------------------------------------------------------------------------------
-- VIP
-----------------------------------------------------------------------------------------------------------------------------------------
local timers = 0
function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end
RegisterCommand('vipbooster', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity1 = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"mod.permissao") then
		if args[1] then
		local identity = vRP.getUserIdentity(parseInt(args[1]))
		local message = identity.name.." "..identity.firstname
		vRP.addUserGroup(parseInt(args[1]),'Booster')
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div style="padding: 0.5vw; margin: 0.5vw; background-image: linear-gradient(to right, rgba(153, 51, 153,1.0) 0%, rgba(153, 51, 153,1.0) 100%); border-radius: 0px 0px 0px =px;"><img style="width: 30px" src="https://www.flaticon.com/premium-icon/icons/svg/4494/4494732.svg"> Obrigado por contribuir com Booster Discord :  {1}</div>',
            args = { fal, message }
        })
		end
		TriggerClientEvent("Notify",source,"sucesso","Setou vip booster no id: "..args[1].." "..identity1.name..""..identity1.firstname)
		SendWebhookMessage(webhooksetvip,"```prolog\n[ID]: "..user_id.." "..identity1.name.." "..identity1.firstname.." \n[SETOU BOOSTER] \n[ID] "..args[1].." "..identity.name.." "..identity.firstname..""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	else
	TriggerClientEvent("Notify",source,"sucesso","Deve ser Admin ou Moderador para usar este comando")
	end
 end, false)
RegisterCommand('vipsilver', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"mod.permissao") then
		if args[1] then
		local identity = vRP.getUserIdentity(parseInt(args[1]))
		local message = identity.name.." "..identity.firstname
		vRP.addUserGroup(parseInt(args[1]),'SILVER')
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div style="padding: 0.5vw; margin: 0.5vw; background-image: linear-gradient(to right, rgba(128, 128, 128,1.0) 0%, rgba(128, 128, 128,1.0) 100%); border-radius: 0px 0px 0px =px;"><img style="width: 30px" src="https://www.flaticon.com/premium-icon/icons/svg/179/179251.svg"> Obrigado por contribuir com VIP SILVER :  {1}</div>',
            args = { fal, message }
        })
		end
		TriggerClientEvent("Notify",source,"sucesso","Setou vip Silver no id: "..args[1].." "..identity.name..""..identity.firstname)
	else
	TriggerClientEvent("Notify",source,"sucesso","Deve ser Admin ou Moderador para usar este comando")
    end
end, false)	
RegisterCommand('vipprime', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"mod.permissao") then
		if args[1] then
		local identity = vRP.getUserIdentity(parseInt(args[1]))
		local message = identity.name.." "..identity.firstname
		vRP.addUserGroup(parseInt(args[1]),'PRIME')
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div style="padding: 0.5vw; margin: 0.5vw; background-image: linear-gradient(to right, rgba(65, 105, 225,1.0) 0%, rgba(65, 105, 225,1.0) 100%); border-radius: 0px 0px 0px =px;"><img style="width: 30px" src="https://www.flaticon.com/premium-icon/icons/svg/4497/4497728.svg"> Obrigado por contribuir com VIP PRIME :  {1}</div>',
            args = { fal, message }
        })
		end
		TriggerClientEvent("Notify",source,"sucesso","Setou vip Prime no id: "..args[1].." "..identity.name..""..identity.firstname)
	else
	TriggerClientEvent("Notify",source,"sucesso","Deve ser Admin ou Moderador para usar este comando")
    end
end, false)	
RegisterCommand('vipgold', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"mod.permissao") then
		if args[1] then
		local identity = vRP.getUserIdentity(parseInt(args[1]))
		local message = identity.name.." "..identity.firstname
		vRP.addUserGroup(parseInt(args[1]),'GOLD')
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div style="padding: 0.5vw; margin: 0.5vw; background-image: linear-gradient(to right, rgba(203, 156, 49,1.0) 0%, rgba(203, 156, 49,1.0) 100%); border-radius: 0px 0px 0px =px;"><img style="width: 30px" src="https://www.flaticon.com/premium-icon/icons/svg/3141/3141816.svg"> Obrigado por contribuir com VIP GOLD :  {1}</div>',
            args = { fal, message }
        })
		end
		TriggerClientEvent("Notify",source,"sucesso","Setou vip Gold no id: "..args[1].." "..identity.name..""..identity.firstname)
	else
	TriggerClientEvent("Notify",source,"sucesso","Deve ser Admin ou Moderador para usar este comando")
    end
end, false)	
RegisterCommand('vipelite', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"mod.permissao") then
		if args[1] then
		local identity = vRP.getUserIdentity(parseInt(args[1]))
		local message = identity.name.." "..identity.firstname
		vRP.addUserGroup(parseInt(args[1]),'ELITE')
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div style="padding: 0.5vw; margin: 0.5vw; background-image: linear-gradient(to right, rgba(0, 0, 0,1.0) 0%, rgba(0, 0, 0,1.0) 100%); border-radius: 0px 0px 0px =px;"><img style="width: 30px" src="https://www.flaticon.com/premium-icon/icons/svg/2646/2646070.svg"> Obrigado por contribuir com VIP ELITE :  {1}</div>',
            args = { fal, message }
        })
		end
		TriggerClientEvent("Notify",source,"sucesso","Setou vip Elite no id: "..args[1].." "..identity.name..""..identity.firstname)
	else
	TriggerClientEvent("Notify",source,"sucesso","Deve ser Admin ou Moderador para usar este comando")
    end
end, false)	
RegisterCommand('vipfamily', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"mod.permissao") then
		if args[1] then
		local identity = vRP.getUserIdentity(parseInt(args[1]))
		local message = identity.name.." "..identity.firstname
		vRP.addUserGroup(parseInt(args[1]),'FAMILY')
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div style="padding: 0.5vw; margin: 0.5vw; background-image: linear-gradient(to right, rgba(148, 0, 211,1.0) 0%, rgba(148, 0, 211,1.0) 100%); border-radius: 0px 0px 0px =px;"><img style="width: 30px" src="https://www.flaticon.com/premium-icon/icons/svg/4081/4081669.svg"> Obrigado por contribuir com VIP FAMILY :  {1}</div>',
            args = { fal, message }
        })
		end
		TriggerClientEvent("Notify",source,"sucesso","Setou vip Family no id: "..args[1].." "..identity.name..""..identity.firstname)
    else
	TriggerClientEvent("Notify",source,"sucesso","Deve ser Admin ou Moderador para usar este comando")
    end
end, false)		

print('^2RTS_VIP ^7Criado por ^1Rutss [Dev] ^7| ^4Marcos .Rutss#5346 ')
--TriggerEvent('eblips:add',{ name = "Corredor", src = source, color = 83 })
--[[
NÃO RETIRE OS CRÉDITOS / NÃO RETIRE OS CRÉDITOS / NÃO RETIRE OS CRÉDITOS / NÃO RETIRE OS CRÉDITOS / NÃO RETIRE OS CRÉDITOS / NÃO RETIRE OS CRÉDITOS

TODOS OS DIREITOS AO CRIADOR  'Rutss.Dev'
url 'https://discord.gg/AbjS8gZ'
versão 'VRPEX'

NÃO RETIRE OS CRÉDITOS / NÃO RETIRE OS CRÉDITOS / NÃO RETIRE OS CRÉDITOS / NÃO RETIRE OS CRÉDITOS / NÃO RETIRE OS CRÉDITOS / NÃO RETIRE OS CRÉDITOS
]]