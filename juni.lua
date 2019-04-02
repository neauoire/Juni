require "keybow"

local layer = 0
local last_key = nil
local shift_key = false

function setup()
    keybow.auto_lights(false)
    keybow.clear_lights()
end

template = {
    {},
    {"e", "_", "f", "j", "4", "`", ".", "]", "$ar"}, -- 01
    {"i", "c", "p", "z", "7", "_", "?", ">", "$je"}, -- 02
    {},
    {"t", "r", "_", "x", "5", "/", ",", "[", "$ad"}, -- 04
    {"n", "u", "b", "1", "8", "?", "_", "<", "$au"}, -- 05
    {},
    {"a", "d", "g", "_", "6", "=", "'", ")", "$al"}, -- 07
    {"s", "m", "v", "2", "9", "?", "?", "_", "$jh"}, -- 08
    {},
    {"o", "l", "y", "q", "_", "-", ";", "(", "$je"}, -- 10
    {"h", "w", "k", "3", "0", "?", "?", "|", "_"},  -- 11
    {}
}

function input(key,mod,pressed)
    if pressed == true then
        key_down(key,mod)
    else
        key_up(key,mod)
    end
    update_lights()
end

function key_down(key,mod)
    push_layer(mod)
    last_key = key
end

function key_up(key,mod)
    pop_layer(mod)
    -- Letters
    if key == last_key then
        ch = get_char(key,layer)
        -- Arrows
        if ch == "$au" then keybow.tap_key(keybow.UP_ARROW) ; return end
        if ch == "$ad" then keybow.tap_key(keybow.DOWN_ARROW) ; return end
        if ch == "$al" then keybow.tap_key(keybow.LEFT_ARROW) ; return end
        if ch == "$ar" then keybow.tap_key(keybow.RIGHT_ARROW) ; return end
        if ch == "$je" then keybow.tap_key(keybow.ESCAPE) ; return end
        if ch == "$jh" then keybow.tap_key(keybow.HOME) ; return end
        if ch == "$je" then keybow.tap_key(keybow.END) ; return end
        -- Sends
        send(ch)
    end
end

function get_char(key,layer)
    return template[key+1][layer+1]
end

function push_layer(id)
    if layer > 0 then return end
    if layer == id then return end
    layer = id
    
end

function pop_layer(id)
    if id ~= layer then return end
    layer = 0
end

function send(ch)
    keybow.tap_key(ch)
end

function update_lights()
    keybow.clear_lights()
    if layer > 0 then
        keybow.set_pixel(layer_key(layer), 255, 255, 255)
    end
    if shift_key == true then
        keybow.set_pixel(9, 255, 0, 0)
    end
end

function layer_key(layer)
    if layer == 1 then return 1 end
    if layer == 2 then return 4 end
    if layer == 3 then return 7 end
    if layer == 4 then return 10 end
    if layer == 5 then return 2 end
    if layer == 6 then return 5 end
    if layer == 7 then return 8 end
    if layer == 8 then return 11 end
    return 0
end

-- Map --

-- TOP 11 08 05 02 --
-- MID 10 07 04 01 --
-- LOW 09 06 03 00 --

-- Top --

function handle_key_11(pressed)
    input(11, 8, pressed)
end

function handle_key_08(pressed)
    input(8, 7, pressed)
end

function handle_key_05(pressed)
    input(5, 6, pressed)
end

function handle_key_02(pressed)
    input(2, 5, pressed)
end

-- Mid --

function handle_key_10(pressed)
    input(10, 4, pressed)
end

function handle_key_07(pressed)
    input(7, 3, pressed)
end

function handle_key_04(pressed)
    input(4, 2, pressed)
end

function handle_key_01(pressed)
    input(1, 1, pressed)
end

-- Low --

function handle_key_09(pressed)
    if pressed == true then
        keybow.set_modifier(keybow.LEFT_SHIFT, keybow.KEY_DOWN)
    else
        keybow.set_modifier(keybow.LEFT_SHIFT, keybow.KEY_UP)
    end
    shift_key = pressed
    update_lights()
end

function handle_key_06(pressed)
    if shift_key == true then 
        keybow.set_key(keybow.DELETE, pressed)
    else
        keybow.set_key(keybow.BACKSPACE, pressed)
    end
end

function handle_key_03(pressed)
    keybow.set_key(keybow.ENTER, pressed)
end

function handle_key_00(pressed)
    if shift_key == true then 
        keybow.set_key(keybow.TAB, pressed)
    else
        keybow.set_key(keybow.SPACE, pressed)
    end
end