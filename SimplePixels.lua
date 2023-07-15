local PIXEL_SIZE = 1.5
local uiScale = UIParent:GetEffectiveScale() -- use this function to get the effective UI scale
local screenWidth, screenHeight = GetScreenWidth() * uiScale, GetScreenHeight() * uiScale -- scale the screen size
local maxPixelsWidth = math.floor(screenWidth / PIXEL_SIZE)
local maxPixelsHeight = math.floor(screenHeight / PIXEL_SIZE)

for i, pixel in ipairs(pixels) do
    local row = math.floor((i - 1) / maxPixelsWidth)
    local col = (i - 1) % maxPixelsWidth

    if row < maxPixelsHeight then  -- Check to avoid overflowing the screen height
        local pixelFrame = CreateFrame("Frame", nil, UIParent)
        pixelFrame:SetPoint("TOPLEFT", col * PIXEL_SIZE / uiScale, -row * PIXEL_SIZE / uiScale)  -- account for UI scale in position
        pixelFrame:SetSize(PIXEL_SIZE / uiScale, PIXEL_SIZE / uiScale)  -- account for UI scale in size

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
end

function to_color(number)
    local red = math.floor(number / 65536) % 256
    local green = math.floor(number / 256) % 256
    local blue = number % 256
    return {red, green, blue}
end

function GetDebuff(debuff_name)
    for i=1,40 do
        local name, rank, iconTexture, count, debuffType, duration, timeLeft = UnitDebuff("target", i); 
        if name == debuff_name and duration ~=nil then
          return 1
        end
    end
    return 0
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
    local current_time = GetTime()
    local time_left = duration - (current_time - start)
    return time_left <= 1 and 1 or 0
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



    