-- require "keybow"

local layer = 0
local layer_key = false

function setup() -- Set custom lights up
    keybow.auto_lights(false)
    keybow.clear_lights()
    keybow.set_pixel(0, 255, 255, 0) -- Green
    keybow.set_pixel(1, 255, 255, 0) -- Green
    keybow.set_pixel(2, 0, 255, 255) -- Cyan
    keybow.set_pixel(3, 255, 0, 255) -- Magenta
    keybow.set_pixel(4, 0, 255, 255) -- Cyan
    keybow.set_pixel(5, 0, 255, 255) -- Cyan
    keybow.set_pixel(6, 255, 0, 255) -- Magenta
    keybow.set_pixel(7, 255, 0, 255) -- Magenta
    keybow.set_pixel(8, 0, 255, 255) -- Cyan
    keybow.set_pixel(9, 255, 0, 255) -- Magenta
    keybow.set_pixel(10, 0, 255, 255) -- Cyan
    keybow.set_pixel(11, 0, 255, 255) -- Cyan
end

template = {
    {},
    {"e", "r", "_", "x", "4", ",", "(", "&"}, -- 01
    {"i", "_", "f", "j", "3", ".", ")", "@"}, -- 02
    {},
    {"t", "r", "_", "x", "4", ",", "(", "&"}, -- 04
    {"n", "u", "b", "0", "7", "=", "_", ";"}, -- 05
    {},
    {"a", "d", "g", "_", "5", "-", "]", ">"}, -- 07
    {"s", "m", "v", "1", "8", "/", "}", "_"}, -- 08
    {},
    {"o", "l", "y", "q", "_", "+", "[", "<"}, -- 10
    {"h", "w", "k", "z", "9", "*", "{", "%"},  -- 11
    {"?","?","?","?","?","?","?","?"}
}

function set_layer(id, pressed)
    if pressed then
        layer = id
    else
        layer = 0
    end
    layer_key = pressed
end

function get_char(key,layer)
    return template[key+1][1]
end

function send(ch)
    print(ch)
    -- keybow.tap_key(ch)
end

function input(id,layer,pressed)
    local ch = get_char(id,layer)
    if ch == nil then return end
    if layer > 0 and pressed == true then
        send(ch)
    elseif layer == 0 and pressed == false and layer_key == true then
        send(ch)
    end
end

-- Map --

-- TOP 11 08 05 02 --
-- MID 10 07 04 01 --
-- LOW 09 06 03 00 --

-- Top --

function handle_key_11(pressed)
    input(11, layer, pressed)
    set_layer(8, pressed)
end

function handle_key_08(pressed)
    input(8, layer, pressed)
    set_layer(7, pressed)
end

function handle_key_05(pressed)
    input(5, layer, pressed)
    set_layer(6, pressed)
end

function handle_key_02(pressed)
    input(2, layer, pressed)
    set_layer(5, pressed)
end

-- Mid --

function handle_key_10(pressed)
    input(10, layer, pressed)
    set_layer(4, pressed)
end

function handle_key_07(pressed)
    input(7, layer, pressed)
    set_layer(3, pressed)
end

function handle_key_04(pressed)
    input(4, layer, pressed)
    set_layer(2, pressed)
end

function handle_key_01(pressed)
    input(1, layer, pressed)
    set_layer(1, pressed)
end

-- Low --

function handle_key_09(pressed)
    input("0", pressed)
end

function handle_key_06(pressed)
    input("0", pressed)
end

function handle_key_03(pressed)
    input("0", pressed)
end

function handle_key_00(pressed)
    input("0", pressed)
end
