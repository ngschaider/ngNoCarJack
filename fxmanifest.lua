fx_version 'cerulean'

games { 
	'gta5' 
}

name 'ngNoCarJack'
author 'Niklas Gschaider <niklas.gschaider@gschaider-systems.at>'
description 'Disables entering pedestrian vehicles'
version 'v1.0.0'

client_scripts {
	"client.lua",
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	"server.lua",
}