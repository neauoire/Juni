require "keybow"

local layer1 = false
local layer2 = false
local layer3 = false
local layer4 = false
local layer5 = false
local layer6 = false
local layer7 = false
local layer8 = false

-- Map --

-- TOP 11 08 05 02 --
-- MID 10 07 04 01 --
-- LOW 09 06 03 00 --

-- Top --

function handle_key_11(pressed)
    if layer1 == true then
        keybow.set_key("w", pressed)
    elseif layer2 == true then
        keybow.set_key("k", pressed)
    elseif layer3 == true then
        keybow.set_key("z", pressed)
    else
        keybow.set_key("h", pressed)
    end
end

function handle_key_08(pressed)
    -- keybow.set_key("s", pressed)
    layer7 = pressed
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
