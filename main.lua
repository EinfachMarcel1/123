local display = false

AddEventHandler('onResourceStarting', function()
  if (LAZY.triggeron == nil) then
    LAZY.triggeron = "lazy:daily"
    print(LAZY.triggeron)
  else
    print(LAZY.triggeron)
    return
  end
end)

AddEventHandler(LAZY.triggeron, function()
    SetDisplay(not false)
end)

RegisterNUICallback("exit", function()
  SetDisplay(false)
end)

RegisterNUICallback("main", function()
  SetDisplay(false)
end)
