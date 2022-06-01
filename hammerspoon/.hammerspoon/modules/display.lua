function displayFocusInfo()
    hs.alert.show("App path:        "
    ..hs.window.focusedWindow():application():path()
    .."\n"
    .."App name:      "
    ..hs.window.focusedWindow():application():name()
    .."\n"
    .."IM source id:  "
    ..hs.keycodes.currentSourceID())
end

function displayHelp()
end

hs.hotkey.bind({ "cmd", "alt" }, '/', displayHelp)
hs.hotkey.bind({ "cmd", "alt" }, ".", displayFocusInfo)