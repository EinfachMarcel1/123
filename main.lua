local display = false

AddEventHandler('onResourceStart', function()
  TriggerEvent('gettrigger')
  TriggerEvent(LAZY.trigger)
end)

AddEventHandler('gettrigger', function()
  if LAZY.trigger == nil then
    LAZY.trigger = "lazy:daily"
    print(LAZY.trigger)
    return LAZY.trigger
  else
    print(LAZY.trigger)
    return
  end
end)

AddEventHandler(LAZY.trigger, function()
    SetDisplay(not false)
end)

RegisterNUICallback("exit", function()
  SetDisplay(false)
end)

RegisterNUICallback("main", function()
  SetDisplay(false)
end)

function SetDisplay(bool)
  display = bool
  SendNUIMessage({
      type = "ui",
      status = bool,
  })
end
