--  ___              _    _     _                 _ 
-- |_ _|_ __ ___    / \  (_) __| | __ _ _ __     | |
--  | || '_ ` _ \  / _ \ | |/ _` |/ _` | '_ \ _  | |
--  | || | | | | |/ ___ \| | (_| | (_| | | | | |_| |
-- |___|_| |_| |_/_/   \_\_|\__,_|\__,_|_| |_|\___/ 
-- 


-- VARIBLES
local Prefix = Function.Prefix
local resourceName = Function.ResourceName
local version = Function.Version


-- Run Checks
Citizen.CreateThread(function()
    checkName()
    debugCheck()
end)


-- Script Server Code


-- Credits --
-- Don't be weird.. Leave my Credits!!
print(Prefix.." "..resourceName.." by ImAidanJ")
print(Prefix.." Current Version: "..version)