# Vehicle Max Mods Script for FiveM

## Description

This is a **FiveM** script that allows players to maximize vehicle modifications with multi-language support. It supports both **ESX** and **Standalone** frameworks. Players can modify their own vehicle or another player's vehicle by specifying the player ID (if authorized). It includes permission checks to ensure only authorized users can modify others' vehicles.

## Usage

- `/max`  
  Modify the vehicle you are currently in.

- `/max [playerId]`  
  Modify the vehicle of the specified player ID (requires admin permissions).

## Configuration

Edit `config.lua`:

```lua
Config = {}

Config.Locale = "ar" -- Language setting, can be "en" for English or "ar" for Arabic or other supported languages in Locales.lua

-- use "esx" or "standalone" for the framework type
Config.Framework = "auto"

Config.MaxVehicleModsCommand = "max" -- Command to trigger max vehicle mods
Config.AdminGroup = "superadmin" -- Group that can use the command

Config.AcePermission = "admin.maxmods" -- Ace permission for the command
