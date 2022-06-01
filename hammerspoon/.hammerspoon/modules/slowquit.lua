local delay = 0.1
local killedIt = false

function pressedQ()
    killedIt = false
    hs.alert.show("⌘Q")
    hs.timer.usleep(1000000 * delay)
end

function repeatQ()
    if killedIt then return end
    hs.application.frontmostApplication():kill()
    killedIt = true
    hs.alert.closeAll()
end

hs.hotkey.bind('cmd', 'Q', pressedQ, nil, repeatQ)