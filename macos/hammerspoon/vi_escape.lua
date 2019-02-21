local vi_escape_pressed = function()
  hs.eventtap.keyStroke({}, "ESCAPE")
end

local vi_escape_released = function()
end

local vi_escape_repeat = function()
end

return hs.hotkey.new(
  "ctrl",
  "[",
  vi_escape_pressed,
  vi_escape_released,
  vi_escape_repeat
)
