local frame = CreateFrame("Frame", nil, UIParent)
local PIXEL_SIZE = 2

function to_color(number)
    local red = math.floor(number / 65536) % 256
    local green = math.floor(number / 256) % 256
    local blue = number % 256
    return { red, green, blue }
end

function to_color_array(input, number)
    local result = {}
    for i = 1, #input do
        local ascii = string.byte(input, i)
        local red = math.floor(ascii / 65536) % 256
        local green = math.floor(ascii / 256) % 256
        local blue = ascii % 256
        table.insert(result, red)
        table.insert(result, green)
        table.insert(result, blue)
    end

    local red = math.floor(number / 65536) % 256
    local green = math.floor(number / 256) % 256
    local blue = number % 256
    table.insert(result, red)
    table.insert(result, green)
    table.insert(result, blue)
    
    return result
end


function interpret_colors(colors)
    local numColors = #colors / 3

    local asciiChars = ""
    for i = 1, numColors - 1 do
        local red = colors[(i - 1) * 3 + 1]
        local green = colors[(i - 1) * 3 + 2]
        local blue = colors[(i - 1) * 3 + 3]
        local ascii = red * 65536 + green * 256 + blue
        asciiChars = asciiChars .. string.char(ascii)
    end

    local red = colors[#colors - 2]
    local green = colors[#colors - 1]
    local blue = colors[#colors]
    local integerValue = red * 65536 + green * 256 + blue

    return asciiChars, integerValue
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

function IsTargetDead(string)
    if UnitIsDead(string) then
        return 1
    else 
        return 0
    end
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

function GetSpellColors()
    -- Work in progress, todo: fix so values can be used in read
    for i = 1, 12 do
      local type, id = GetActionInfo(i)
      if type == "spell" then
        local name = GetSpellInfo(id)
        local color = to_color(id)
        if name and color then
          table.insert(pixels, {
            name = i .. ", " .. name,
            color = function() return color end,
          })
        end
      end
    end
    
    -- compute pixels count color and insert it as the first element
    local pixelsCountColor = to_color(#pixels)
    table.insert(pixels, 1,{
      name = "1. Count",
      color = function() return pixelsCountColor end,
    })
  
    return pixels
end
  
GetSpellColors()

local screenWidth = UIParent:GetWidth()
local columns = math.floor(screenWidth / PIXEL_SIZE)

for i, pixel in ipairs(pixels) do
    local column = ((i - 1) % columns) + 1
    local row = math.floor((i - 1) / columns) + 1

    local pixelFrame = CreateFrame("Frame", nil, UIParent)
    pixelFrame:SetPoint("TOPLEFT", (column - 1) * PIXEL_SIZE, -(row - 1) * PIXEL_SIZE)
    pixelFrame:SetSize(PIXEL_SIZE, PIXEL_SIZE)

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
