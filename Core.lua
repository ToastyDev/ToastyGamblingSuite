--functions i know ill need but dont want to  look up later
--RandomRoll(min, max)
--AddTradeMoney() won value?
--SetTradeMoney(wonValue * 100 * 100)
--GetPlayerTradeMoney() for verification (turn green when good?)

-- saved leaderboard variables here
local ToastLeaderboard = {}

-- global variables
local anteValue = 0

-- bind events
local eventFrame = CreateFrame("Frame", "EventFrame")
EventFrame:RegisterEvent("ADDON_LOADED")
EventFrame:RegisterEvent("PLAYER_LOGOUT")

function eventFrameParse(self, event, arg1)
    if (event == "ADDON_LOADED") then
      ToastLeaderboard = _G.ToastLeaderboard
      print("Toast Gambling Suite loaded successfully!")
      EventFrame:UnregisterEvent("ADDON_LOADED")
    elseif (event == "PLAYER_LOGOUT") then
      _G.ToastLeaderboard = ToastLeaderboard
    end
end

EventFrame:SetScript("OnEvent", eventFrameParse)

--setup slash commands
SLASH_TOASTYGAMBLINGSUITE1 = "/tgs"
SLASH_TOASTYGAMBLINGSUITE2 = "/toastgambling"

function SlashCommandList.TOASTYGAMBLINGSUITE(cmd, editBox)
  local request, arg, value = strsplit(' ', cmd, 3)
  request = request.lower(request)
  if request == "hilo" then
    print("HiLo started with bid " .. value .. " gold")
  elseif request == "lohi" then
    print("LoHi started with bid " .. value .. " gold")
  elseif request == "leaderboard" then
    print("Toast Gambling Leaderboard opened")
  elseif request == "show" then
    print("Toast Gampling host frame")
  else
    print("Toast Gambling host frame")
  end
end

-- frame prefabs
--create frame variables so they can be constructed and used in needed functions
local hostFrame
local leaderboardFrame
local rollFrame
local rollTrackerFrame
local tradeButtonFrame

function HostFrame()
end

function LeaderboardFrame()
end

function RollTrackerFrame()
  --create Frame
  --background
  --border
  --parse chat
  --sort
  --print
end

function RollButtonFrame()
  --Frame
  --border
  --die texture
  --bind DoRoll
  --overlay checkmark
  --disable button
  --if already made, reset clickable
end

function TradeButtonFrame()
end


-- do stuff functions
function UpdateLeaderboard()
  --add totals to characters
  --sort list
  --assign to global
end

function HiLo()
end

function LoHi()
end

--rolls based on ante
function DoRoll(highNumber)
  RandomRoll(1, highNumber)
end
