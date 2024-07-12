--  ___              _    _     _                 _ 
-- |_ _|_ __ ___    / \  (_) __| | __ _ _ __     | |
--  | || '_ ` _ \  / _ \ | |/ _` |/ _` | '_ \ _  | |
--  | || | | | | |/ ___ \| | (_| | (_| | | | | |_| |
-- |___|_| |_| |_/_/   \_\_|\__,_|\__,_|_| |_|\___/ 
-- 

-- Function Variables --

local Prefix = Function.Prefix
local resourceName = Function.ResourceName
local version = Function.Version

-- Run Checks --

Citizen.CreateThread(function()
    checkName()
    debugCheck()
end)

-- Server Code --

RegisterCommand(Config.CommandName, function(source, args, rawCommand)
    if not Config.UseAcePermissions or IsPlayerAceAllowed(source, Config.AcePermissionString) then

        if Config.CountdownEnabled then
            TriggerClientEvent('chat:addMessage', -1, {
                color = {255, 255, 255},
                multiline = true,
                args = {"[^3CSRP^0] Starting countdown..."}
            })

            for i = Config.CountdownDuration, 1, -1 do
                Citizen.Wait(1000) -- Wait for 1 second
                TriggerClientEvent('chat:addMessage', -1, {
                    color = {255, 255, 255},
                    multiline = true,
                    args = {"[^3CSRP^0]", tostring(i)}
                })
            end
        end

        TriggerClientEvent('AJ:VehClear', -1)
        Citizen.Wait(1000)

        if Config.ClearChatAfterCleanup then
            TriggerClientEvent('chat:clear', -1)
        end
        
        TriggerClientEvent("chat:addMessage", -1, { template = '<div style="padding: 0.5vw; text-align: center; margin: 0.5vw; background-color: rgba(46, 235, 94, 0.6); border-radius: 3px; color: white;"><b>{0}</b></div>', args = {"MassDV has been Completed."}})
    else
        TriggerClientEvent("chat:addMessage", source, {template = '<div style="padding: 0.5vw; text-align: center; margin: 0.5vw; background-color: rgba(255, 0, 0, 0.6); border-radius: 3px; color: white;"><b>{0}</b></div>', args = {"You do not have permission to use this command."}})
    end
end, false)

-- Credits --
-- Don't be weird.. Leave my Credits!!
print(Prefix.." "..resourceName.." by ImAidanJ")
print(Prefix.." Current Version: "..version)