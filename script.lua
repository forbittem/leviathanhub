local a = _G.Key or "None";
local b = game.Players.LocalPlayer.UserId;
local thing = game:HttpGet("https://leviathanhub.herokuapp.com/checkwl?Key="..a.."&User="..b, true)
if thing == "Not Whitelisted!" then
game.Players.LocalPlayer:Kick("Not Whitelisted/Incorrect Key")
return;
elseif thing == "Nope." then
game.Players.LocalPlayer:Kick("Invalid Roblox ID/Not Whitelisted")
return;
end
if thing == "Correct" then
   print("You're whitelisted!") ;
   game.Players.LocalPlayer:Kick("Whitelisted")
end
