local should_send_escape = true
local was_ctrl_down = false

local escape_key_timeout = hs.timer.delayed.new(
  1,
  function() should_send_escape = false end
)

function handle_flags_changed(event)
  local is_ctrl_down = event:getFlags()["ctrl"]

  if was_ctrl_down == is_ctrl_down then return end

  was_ctrl_down = is_ctrl_down

  if is_ctrl_down then
    should_send_escape = true
    escape_key_timeout:start()
  else
    if should_send_escape then
      hs.eventtap.keyStroke({}, "ESCAPE")
    end
    escape_key_timeout:stop()
  end
end

function handle_key_down(event)
  if event:getFlags()["ctrl"] then
    should_send_escape = false
  end
end

local flags_changed_listener = hs.eventtap.new(
  {hs.eventtap.event.types['flagsChanged']},
  handle_flags_changed
)

local key_down_listener = hs.eventtap.new(
  {hs.eventtap.event.types['keyDown']},
  handle_key_down
)

local HybridControl = {}

function HybridControl.start()
  flags_changed_listener:start()
  key_down_listener:start()
end

function HybridControl.stop()
  flags_changed_listener.stop()
  key_down_listener.stop()
end

return HybridControl
