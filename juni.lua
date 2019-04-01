require "keybow"

local _00 = false
local _01 = false
local _02 = false
local _03 = false

local _04 = false
local _05 = false
local _06 = false
local _07 = false

local _08 = false
local _09 = false
local _10 = false
local _11 = false

-- Map --

-- TOP 11 08 05 02 --
-- MID 10 07 04 01 --
-- LOW 09 06 03 00 --

-- Top --

function handle_key_11(pressed)
    keybow.set_key("h", pressed)
end

function handle_key_08(pressed)
    keybow.set_key("s", pressed)
end

function handle_key_05(pressed)
    keybow.set_key("n", pressed)
end

function handle_key_02(pressed)
    keybow.set_key("i", pressed)
end

-- Mid --

function handle_key_10(pressed)
    keybow.set_key("o", pressed)
end

function handle_key_07(pressed)
    keybow.set_key("a", pressed)
end

function handle_key_04(pressed)
    keybow.set_key("t", pressed)
end

function handle_key_01(pressed)
    keybow.set_key("e", pressed)
end

-- Low --

function handle_key_09(pressed)
    keybow.set_key("0", pressed)
end

function handle_key_06(pressed)
    keybow.set_key("0", pressed)
end

function handle_key_03(pressed)
    keybow.set_key("0", pressed)
end

function handle_key_00(pressed)
    keybow.set_key("0", pressed)
end
