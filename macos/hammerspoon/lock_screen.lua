local lock_screen_pressed = function()
  hs.caffeinate.lockScreen()
end

local lock_screen_released = function()
end

local lock_screen_repeat = function()
end

return hs.hotkey.new(
  "cmd",
  "l",
  lock_screen_pressed,
  lock_screen_released,
  lock_screen_repeat
)
