local HsReload = require("hs_reload")
local HybridControl = require("hybrid_control")
local LockScreen = require("lock_screen")
local ViEscape = require("vi_escape")

HsReload:enable()
HybridControl.start()
LockScreen:enable()
ViEscape:enable()
