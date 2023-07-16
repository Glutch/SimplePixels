pixels = {

    {
        name = "2. Health",
        color = function()
            local healthPct = UnitHealth("player") / UnitHealthMax("player")
            return to_color(healthPct * 100)
        end,
    },
    {
        name = "3. Mana",
        color = function()
            local max = UnitPowerMax("player")
            local curr = UnitPower("player")
            -- print(x)
            return to_color((curr / max) * 100)
        end,
    },
    {
        name = "4. TargetHealth",
        color = function()
            return to_color(GetTargetHealthPct())
        end,
    },
    {
        name = "5. Range",
        color = function()
            return to_color(isInRange())
        end,
    },
    {
        name = "6. Combat",
        color = function()
            return to_color(CombatStatus())
        end,
    },
    {
        name = "7. Brain Freeze",
        color = function()
            return to_color(GetBuffs("Brain Freeze"))
        end,
    },
    {
        name = "8. Fingers of Frost",
        color = function()
            return to_color(GetBuffs("Fingers of Frost"))
        end,
    },
    {
        name = "9. Slot 1",
        color = function()
            return to_color(SpellReady(1))
        end,
    },
    {
        name = "10. Slot 2",
        color = function()
            return to_color(SpellReady(2))
        end,
    },
    {
        name = "11. Slot 3",
        color = function()
            return to_color(SpellReady(3))
        end,
    },
    {
        name = "12. Slot 4",
        color = function()
            return to_color(SpellReady(4))
        end,
    },
    {
        name = "13. Slot 5",
        color = function()
            return to_color(SpellReady(5))
        end,
    },
    {
        name = "14. Slot 6",
        color = function()
            return to_color(SpellReady(6))
        end,
    },
    {
        name = "15. Slot 7",
        color = function()
            return to_color(SpellReady(7))
        end,
    },
    {
        name = "16. Slot 8",
        color = function()
            return to_color(SpellReady(8))
        end,
    },
    {
        name = "17. Slot 9",
        color = function()
            return to_color(SpellReady(9))
        end,
    },
    {
        name = "18. Slot 10",
        color = function()
            return to_color(SpellReady(10))
        end,
    },
    {
        name = "19. Slot 11",
        color = function()
            return to_color(SpellReady(11))
        end,
    },
    {
        name = "20. Slot 12",
        color = function()
            return to_color(SpellReady(12))
        end,
    },
    {
        name = "21. Target Debuff Winter's Chill",
        color = function()
            return to_color(GetDebuff("Winter's Chill"))
        end,
    },
    {
        name = "22. Dead check",
        color = function()
            return to_color(IsTargetDead("target"))
        end,
    },
}




--för att testa pixel perfectness

--[[ pixels = {
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
} ]]