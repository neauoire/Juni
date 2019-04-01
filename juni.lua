require "keybow"

local layer = 0
local last_key = nil
local keys_down = {}

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


function input(key,mod,pressed)
    if pressed == true then
        key_down(key,mod)
    else
        key_up(key,mod)
    end
end

function key_down(key,mod)
    push_layer(mod)
    last_key = key
end

function key_up(key,mod)
    pop_layer(mod)
    if key == last_key then
        send(get_char(key,layer))
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
    -- print("output:",ch)
    keybow.tap_key(ch)
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

function benchmark()
    print("============= Layer: AA")
    print("\nexpected: o")
    handle_key_10(true)
    handle_key_10(false)

    print("============= Layer: AA ")
    print("\nexpected: o")
    handle_key_10(true)
    handle_key_10(false)

    print("============= Layer: AAA ")
    print("\nexpected: o")
    handle_key_10(true)
    handle_key_10(true)
    handle_key_10(false)

    print("============= Layer: AAA ")
    print("\nexpected: o o")
    handle_key_10(true)
    handle_key_10(false)
    handle_key_10(false)

    print("============= Layer: ABBA")
    print("\nexpected: 8")
    handle_key_10(true)
    handle_key_08(true)
    handle_key_08(false)
    handle_key_10(false)

    print("============= Layer: ABAB")
    print("\nexpected: 8")
    handle_key_10(true)
    handle_key_08(true)
    handle_key_10(false)
    handle_key_08(false)

    print("============= Layer: ABAB ")
    print("\nexpected: 8")
    handle_key_10(true)
    handle_key_05(true)
    handle_key_10(false)
    handle_key_05(false)

    print("============= Layer: ABBBBA")
    print("\nexpected: mm")
    handle_key_10(true)
    handle_key_08(true)
    handle_key_08(false)
    handle_key_08(true)
    handle_key_08(false)
    handle_key_10(false)
    
end

-- benchmark()
