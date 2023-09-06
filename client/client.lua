local nuiIsVisible = false

local function setNUIVisibility(visibility)
    nuiIsVisible = visibility

    SendNUIMessage({
        type = 'diplayNUI',
        value = nuiIsVisible
    })

    SetNuiFocus(visibility, visibility)
end
RegisterCommand('nui-display', function()
    setNUIVisibility(true)
end)

RegisterNUICallback('hideUI', function(data, cb)
    setNUIVisibility(false)

    cb({
        error = nil,
        data = {
        }
    })
end)
RegisterNUICallback('sendTestDataToLua', function(data, cb)
    TriggerEvent('chat:addMessage', {
        color = { 255, 0, 0},
        multiline = true,
        args = {data.message}
      })
end)

