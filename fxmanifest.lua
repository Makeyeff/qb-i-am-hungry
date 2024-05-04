fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'MaxOrak'
description 'Hunger and Thirst Alert'
version '1.0.0'

ui_page 'html/index.html'

shared_scripts {'config.lua', '@qb-core/shared/locale.lua', 'locales/en.lua', 'locales/*.lua'}

client_script 'client/main.lua'

files {'html/*.html', 'html/*.js', 'html/sounds/*.ogg'}
