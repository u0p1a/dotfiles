local hotkey = {"ctrl", "alt", "cmd", "shift"}
local apps = {
  { hotkey, "b", "Google Chrome" },
  { hotkey, "v", "WeChat" },
  { hotkey, "e", "Finder" },
  { hotkey, "d", "Dash" },
  { hotkey, "t", "iTerm" },
  { hotkey,  "c", "Code"}
}
hs.loadSpoon("AppToggle")
spoon.AppToggle:setMap(apps)