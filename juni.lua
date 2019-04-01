-- require "keybow"

local layer = 0
local last_key = nil

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

function get_char(key,layer)
    return template[key+1][1]
end

function set_layer(mod,pressed)
    if mod == layer then return end
    
    if mod == 0 then
        layer = mod
    else 
        layer = mod
    end
end

function send(ch)
    print("output:",ch)
    -- keybow.tap_key(ch)
end

function input(key,mod,pressed)
    local ch = get_char(key,layer)
    if ch == nil then return end

    print(key,mod,layer,pressed)
    
    -- AA
    if key == last_key and pressed == false then
        send(get_char(key,0))
    end


    if pressed == true then
        last_key = key
    end

    -- Layer
    if pressed == true and layer == 0 then
        set_layer(mod)
    else
        set_layer(0)
    end
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
    print("\nexpected: h")
    handle_key_11(true)
    handle_key_11(false)

    print("============= Layer: AA ")
    print("\nexpected: h")
    handle_key_11(true)
    handle_key_11(false)

    print("============= Layer: AAA ")
    print("\nexpected: h")
    handle_key_11(true)
    handle_key_11(true)
    handle_key_11(false)

    print("============= Layer: AAA ")
    print("\nexpected: h")
    handle_key_11(true)
    handle_key_11(false)
    handle_key_11(false)

    print("============= Layer: ABBA")
    print("\nexpected: m")
    handle_key_11(true)
    handle_key_08(true)
    handle_key_08(false)
    handle_key_11(false)

    print("============= Layer: ABAB")
    print("\nexpected: m")
    handle_key_11(true)
    handle_key_08(true)
    handle_key_11(false)
    handle_key_08(false)

    print("============= Layer: ABAB ")
    print("\nexpected: n")
    handle_key_11(true)
    handle_key_05(true)
    handle_key_11(false)
    handle_key_05(false)

    print("============= Layer: ABBBBA")
    print("\nexpected: mm")
    handle_key_11(true)
    handle_key_08(true)
    handle_key_08(false)
    handle_key_08(true)
    handle_key_08(false)
    handle_key_11(false)
    
end

benchmark()
