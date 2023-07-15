local frame = CreateFrame("Frame", nil, UIParent)

local PIXEL_SIZE = 2

function to_color(number)
    local red = math.floor(number / 65536) % 256
    local green = math.floor(number / 256) % 256
    local blue = number % 256
    return {red, green, blue}
end

function GetBuffs(buff)
    for i = 1, 20 do
        local b = UnitBuff("player", i);
        if b ~= nil then
            if string.find(b, buff) then
                return 1
            end
        end
    end
    return 0
end

function CombatStatus()
    return UnitAffectingCombat("player") and 1 or 0
end

function SpellReady(i)
    local start, duration, enable = GetActionCooldown(i)
    return start == 0 and 1 or 0
end

function GetTargetHealthPct()
    local max = UnitHealthMax("target")
    local curr = UnitHealth("target")
    return (curr / max) * 100
end

function isInRange()
    local localizedClass, englishClass, classIndex = UnitClass("player")

    if (localizedClass == 'Warrior') then
        if (IsSpellInRange("Charge", "target") == 1) then
            return 1
        else
            return 0
        end
    end

    if IsActionInRange(1) then
        return 1
    else 
        return 0 
    end
end

-- local pixels = {
--     {
--         name = "1. Health",
--         color = function()
--             local healthPct = UnitHealth("player") / UnitHealthMax("player")
--             return to_color(healthPct * 100)
--         end,
--     },
--     {
--         name = "2. Mana",
--         color = function()
--             local max = UnitPowerMax("player")
--             local curr = UnitPower("player")
--             -- print(x)
--             return to_color((curr / max) * 100)
--         end,
--     },
--     {
--         name = "3. TargetHealth",
--         color = function()
--             return to_color(GetTargetHealthPct())
--         end,
--     },
--     {
--         name = "4. Range",
--         color = function()
--             return to_color(isInRange())
--         end,
--     },
--     {
--         name = "5. Combat",
--         color = function()
--             return to_color(CombatStatus())
--         end,
--     },
--     {
--         name = "6. Brain Freeze",
--         color = function()
--             return to_color(GetBuffs("Brain Freeze"))
--         end,
--     },
--     {
--         name = "7. Fingers of Frost",
--         color = function()
--             return to_color(GetBuffs("Fingers of Frost"))
--         end,
--     },
--     {
--         name = "8. Slot 1",
--         color = function()
--             return to_color(SpellReady(1))
--         end,
--     },
--     {
--         name = "9. Slot 2",
--         color = function()
--             return to_color(SpellReady(2))
--         end,
--     },
--     {
--         name = "10. Slot 3",
--         color = function()
--             return to_color(SpellReady(3))
--         end,
--     },
--     {
--         name = "11. Slot 4",
--         color = function()
--             return to_color(SpellReady(4))
--         end,
--     },
--     {
--         name = "12. Slot 5",
--         color = function()
--             return to_color(SpellReady(5))
--         end,
--     },
--     {
--         name = "13. Slot 6",
--         color = function()
--             return to_color(SpellReady(6))
--         end,
--     },
--     {
--         name = "14. Slot 7",
--         color = function()
--             return to_color(SpellReady(7))
--         end,
--     },
--     {
--         name = "15. Slot 8",
--         color = function()
--             return to_color(SpellReady(8))
--         end,
--     },
--     {
--         name = "16. Slot 9",
--         color = function()
--             return to_color(SpellReady(9))
--         end,
--     },
--     {
--         name = "17. Slot 10",
--         color = function()
--             return to_color(SpellReady(10))
--         end,
--     },
--     {
--         name = "18. Slot 11",
--         color = function()
--             return to_color(SpellReady(11))
--         end,
--     },
--     {
--         name = "19. Slot 12",
--         color = function()
--             return to_color(SpellReady(12))
--         end,
--     },
-- }


-- för att testa pixel perfectness
local pixels = {
    {
        name = "1. Health",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "2. Mana",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "3. TargetHealth",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "4. Range",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "5. Combat",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "6. Frost Armor",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "7. Arcane Intellect",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "8. Fireball",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
    {
        name = "9. Frost Nova",
        color = function()
            return {0, 0, 0}
        end,
    },
    {
        name = "10. Fire Blast",
        color = function()
            return {255, 255, 255}
        end,
    },
}

for i, pixel in ipairs(pixels) do
    local pixelFrame = CreateFrame("Frame", nil, UIParent)
    pixelFrame:SetPoint("TOPLEFT", (i - 1) * PIXEL_SIZE, 0)
    pixelFrame:SetSize(PIXEL_SIZE, PIXEL_SIZE)
    pixelFrame:SetHeight(PIXEL_SIZE)
    pixelFrame:SetWidth(PIXEL_SIZE)

    local pixelTexture = pixelFrame:CreateTexture()
    pixelTexture:SetAllPoints()

    pixelFrame:SetScript("OnUpdate", function()
        local color = pixel.color()
        local r = color[1]
        local g = color[2]
        local b = color[3]
        pixelTexture:SetColorTexture(r / 256, g / 256, b / 256, 1)
    end)
end


