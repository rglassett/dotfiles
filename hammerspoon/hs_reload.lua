local hs_reload_pressed = function ()
  hs.reload()
end

local hs_reload_released = function ()
end

local hs_reload_repeat = function ()
end

return hs.hotkey.new(
  "cmd-shift",
  "r",
  hs_reload_pressed,
  hs_reload_released,
  hs_reload_repeat
)
