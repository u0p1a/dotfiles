hotkey = {
    registeredHotkey = {}
}

local function firstUp(str)
    return (string.lower(str):gsub("^%l", string.upper))
end

function hotkey.bind(mods, key, desc, fn)
    hs.hotkey.bind(mods, key, nil, fn)
    local info = ''
    for _, k in pairs(mods) do
        info = info .. (info ~= '' and '+' or '') .. firstUp(k)
    end
    info = (info .. '+' .. firstUp(key))

    table.insert(hotkey.registeredHotkey, {
        key = info,
        desc = desc
    })
    hs.printf('[注册快捷键]%s -> %s', info, desc)
end

function hotkey.bindWithCtrl(key, desc, fn)
    hotkey.bind({ 'CTRL'}, key, desc, fn)
end

function hotkey.bindWithCmd(key, desc, fn)
    hotkey.bind({ 'CMD'}, key, desc, fn)
end

function hotkey.bindWithShift(key, desc, fn)
    hotkey.bind({ 'Shift'}, key, desc, fn)
end

function hotkey.bindWithAlt(key, desc, fn)
    hotkey.bind({ 'Alt'}, key, desc, fn)
end

function hotkey.bindWithCmdAlt(key, desc, fn)
    hotkey.bind({ 'CMD', 'ALT' }, key, desc, fn)
end


function hotkey.bindWithCtrlCmd(key, desc, fn)
    hotkey.bind({ 'CTRL', 'CMD' }, key, desc, fn)
end

function hotkey.bindWithCtrlCmdAlt(key, desc, fn)
    hotkey.bind({ 'CTRL', 'CMD', 'ALT' }, key, desc, fn)
end

function hotkey.bindWithCtrlAlt(key, desc, fn)
    hotkey.bind({ 'CTRL', 'ALT' }, key, desc, fn)
end

function hotkey.bindWithCtrlShift(key, desc, fn)
    hotkey.bind({ 'CTRL', 'SHIFT' }, key, desc, fn)
end

function hotkey.bindWithCtrlShiftCmd(key, desc, fn)
    hotkey.bind({ 'CTRL', 'SHIFT', 'CMD' }, key, desc, fn)
end

function hotkey.bindWithCtrlShiftAlt(key, desc, fn)
    hotkey.bind({ 'CTRL', 'SHIFT', 'ALT' }, key, desc, fn)
end

function hotkey.bindWithShiftAlt(key, desc, fn)
    hotkey.bind({ 'SHIFT', 'ALT' }, key, desc, fn)
end

function hotkey.bindWithShiftCmd(key, desc, fn)
    hotkey.bind({ 'SHIFT', 'CMD' }, key, desc, fn)
end

function hotkey.bindWithShiftCmdAlt(key, desc, fn)
    hotkey.bind({ 'SHIFT', 'CMD', 'ALT' }, key, desc, fn)
end

function hotkey.bindWithShiftCmdAltCtrl(key, desc, fn)
    hotkey.bind({ 'SHIFT', 'CMD', 'ALT', 'SHIFT' }, key, desc, fn)
end

return hotkey