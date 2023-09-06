fx_version 'cerulean'
games      { 'gta5' }
lua54      'yes'

author      'jthedevio@gmail.com'
description 'Vue3 FiveM Boilerplate to quickly start building state-of-the-art NUIs using Vue3 + Vite + Vitest + Vue Router + Pinia + Axios.'

client_scripts {
    'client/client.lua',
}

ui_page 'nui/vue/dist/index.html'

files {
    'nui/vue/dist/index.html',
    'nui/vue/dist/assets/*.*'
}