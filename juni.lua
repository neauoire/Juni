require "keybow"

local layer = 0

template = {
    {},
    {"t", "r", "_", "x", "4", ",", "(", "&"}, -- 01
    {"e", "_", "f", "j", "3", ".", ")", "@"}, -- 02
    {},
    {"t", "r", "_", "x", "4", ",", "(", "&"}, -- 04
    {"n", "u", "b", "0", "7", "=", "_", ";"}, -- 05
    {},
    {"a", "d", "g", "_", "5", "-", "]", ">"}, -- 07
    {"s", "m", "v", "1", "8", "/", "}", "_"}, -- 08
    {},
    {"o", "l", "y", "q", "_", "+", "[", "<"}, -- 10
    {"h", "w", "k", "z", "9", "*", "{", "%"}  -- 11
}

function set_layer(id, pressed)
    if pressed then
        layer = id
    else
        layer = 0
    end
end

function get_char(key,layer)
    return template[key+1][layer+1]
end

function input(ch,pressed)
    keybow.set_key(ch, pressed)
end

-- Map --

-- TOP 11 08 05 02 --
-- MID 10 07 04 01 --
-- LOW 09 06 03 00 --

-- Top --

function handle_key_11(pressed)
    input(get_char(11,layer), pressed)
    set_layer(8, pressed)
end

function handle_key_08(pressed)
    input(get_char(8,layer), pressed)
    set_layer(7, pressed)
end

function handle_key_05(pressed)
    input(get_char(5,layer), pressed)
    set_layer(6, pressed)
end

function handle_key_02(pressed)
    input(get_char(2,layer), pressed)
    set_layer(5, pressed)
end

-- Mid --

function handle_key_10(pressed)
    input(get_char(10,layer), pressed)
    set_layer(4, pressed)
end

function handle_key_07(pressed)
    input(get_char(7,layer), pressed)
    set_layer(3, pressed)
end

function handle_key_04(pressed)
    input(get_char(4,layer), pressed)
    set_layer(2, pressed)
end

function handle_key_01(pressed)
    input(get_char(1,layer), pressed)
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
