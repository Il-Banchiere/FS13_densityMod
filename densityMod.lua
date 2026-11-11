
-- ==========================================
-- DENSITY MOD - FARMING SIMULATOR 2013
-- Author: KLL
-- Increase field yield
-- ==========================================

-- Yield Multipliers: change the numbers to modify them
--local yieldMultiplier = 1 -- useless

local wheatMultiplier = 4
local barleyMultiplier = 4
local rapeMultiplier = 6
local maizeMultiplier = 4
local potatoMultiplier = 4
local sugarBeetMultiplier = 4
local chaffMultiplier = 2

-- List of FS13 crops
local fruitTypes = {
    "wheat",
    "barley",
    "rape",
    "maize",
    "potato",
    "sugarBeet",
    "chaff"
}

for _, fruitName in ipairs(fruitTypes) do

    local desc = FruitUtil.fruitTypes[fruitName]

    if desc ~= nil and type(desc.literPerSqm) == "number" then

        if desc.densityModOriginalLiterPerSqm == nil then
            desc.densityModOriginalLiterPerSqm = desc.literPerSqm
        end

        local multiplier = 1

        if fruitName == "wheat" then
            multiplier = wheatMultiplier
        end

        if fruitName == "barley" then
            multiplier = barleyMultiplier
        end

        if fruitName == "rape" then
            multiplier = rapeMultiplier
        end

        if fruitName == "maize" then
            multiplier = maizeMultiplier
        end

        if fruitName == "potato" then
            multiplier = potatoMultiplier
        end

        if fruitName == "sugarBeet" then
            multiplier = sugarBeetMultiplier
        end

        if fruitName == "chaff" then
            multiplier = chaffMultiplier
        end

        desc.literPerSqm = desc.densityModOriginalLiterPerSqm * multiplier

    end
end