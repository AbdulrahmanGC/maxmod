# Vehicle Max Mods Script

## Description

This script allows players to maximize vehicle modifications with multi-language support. Players can modify their own vehicle or another player's vehicle by specifying the player ID (if authorized).

## Usage

- `/max`  
  Modify the vehicle you are currently in.

- `/max [playerId]`  
  Modify the vehicle of the specified player ID (requires admin permissions).

## Configuration

Edit `config.lua`:

```lua
Config = {}

-- Language setting ("en", "ar", "cn", etc.)
Config.Locale = "ar"

-- Command name
Config.MaxVehicleModsCommand = "max"

-- Framework type: "auto", "esx", or "standalone"
Config.Framework = "auto"

-- Ace permission for standalone framework
Config.AcePermission = "command.maxvehicle"
```
