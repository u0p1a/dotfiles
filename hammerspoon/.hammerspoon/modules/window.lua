local grid = require "hs.grid"
local hotkey = {"ctrl", "alt", "cmd", "shift"}

hs.grid.MARGINX 	= 0
hs.grid.MARGINY 	= 0
hs.grid.GRIDWIDTH 	= 7
hs.grid.GRIDHEIGHT 	= 3
hs.window.animationDuration = 0.1
--hs.hints.style = "vimperator"

-- 分屏停靠窗口
hs.loadSpoon("MiroWindowsManager")
spoon.MiroWindowsManager:bindHotkeys({
  up = {hotkey, "up"},
  right = {hotkey, "right"},
  down = {hotkey, "down"},
  left = {hotkey, "left"},
  fullscreen = {hotkey, "F"},
  nextscreen = {hotkey, "N"}
})

-- 窗口焦点切换
hs.hotkey.bind(hotkey, 'H', function() hs.window.focusedWindow():focusWindowWest() end)
hs.hotkey.bind(hotkey, 'L', function() hs.window.focusedWindow():focusWindowEast() end)
hs.hotkey.bind(hotkey, 'K', function() hs.window.focusedWindow():focusWindowNorth() end)
hs.hotkey.bind(hotkey, 'J', function() hs.window.focusedWindow():focusWindowSouth() end)

-- 窗口大小调整
hs.hotkey.bind(hotkey, 'Y', hs.grid.resizeWindowThinner)
hs.hotkey.bind(hotkey, 'I', hs.grid.resizeWindowShorter)
hs.hotkey.bind(hotkey, 'U', hs.grid.resizeWindowTaller)
hs.hotkey.bind(hotkey, 'O', hs.grid.resizeWindowWider)

-- 窗口居中
local function move(x, y, w, h)
    return function()
        win = hs.window.focusedWindow()
        if win then
            win_f = win:frame()
            screen_f = win:screen():frame()
            win_f.x = screen_f.w * x + screen_f.x
            win_f.y = screen_f.h * y
            win_f.w = screen_f.w * w
            win_f.h = screen_f.h * h
            win:setFrame(win_f, 0)
        end
    end
end
hs.hotkey.bind(hotkey, 'C', move(0.05, 0.08, 0.9, 0.9))