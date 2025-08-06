fx_version "adamant"
game "gta5"
lua54 "yes"
author "Conker Store"

shared_script {
    "config.lua",
    '@es_extended/imports.lua',
    'locales.lua'
}

server_scripts {
    "server/main.lua"
}

client_scripts {
    "client/main.lua"
}