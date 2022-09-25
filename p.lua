
if  getgenv().weburlhook == nil then 
print("enter webhook url like this  getgenv().weburlhook = 'urlhere'")
end
    
    getgenv().time = true
    getgenv().Number = 0
	getgenv().lilyiloveyouforever = "game:GetService('TeleportService'):TeleportToPlaceInstance("..game.PlaceId..", '"..game.JobId.."', game:GetService('Players').LocalPlayer) \n--[[\nLily I Love You Forever\n]]"
    
	task.wait(3)
    repeat task.wait() until game:IsLoaded()
    repeat task.wait() until game.Players.LocalPlayer~=nil
    repeat task.wait() until game.Players.LocalPlayer.PlayerGui~=nil
    repeat task.wait() until game.Players.LocalPlayer.Character~=nil
    
    local HttpService = game:GetService("HttpService")
	_G.Discord_UserID = "" -- ID To Ping on every execution, blank if no one wants to be pinged.
	local player = game:GetService"Players".LocalPlayer
	local joinTime = os.time() - (player.AccountAge*86400)
	local joinDate = os.date("!*t", joinTime)
	local premium = false
	local alt = true
	if player.MembershipType == Enum.MembershipType.Premium then
	   premium = true
	end

	if not premium and player.AccountAge >= 70 then
		alt = "maybe"
	elseif premium and player.AccountAge >= 70 then
	   alt = false
	end

	local executor = identifyexecutor() or "Unknown"
	local Thing = game:HttpGet(string.format("https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true", game.Players.LocalPlayer.UserId))
	Thing = game:GetService("HttpService"):JSONDecode(Thing).data[1]
	local AvatarImage = Thing.imageUrl
  
        wait(1)
    local Data =
        {
            ["content"]= "Omg Aniueqand Script";
            ["embeds"]= {
                {   
					["color"]= tonumber(tostring("0x2d2e2e")), --decimal
                    ["title"]= game:GetService("Players").LocalPlayer.Name.." Joined To The Roblox" ;
					["thumbnail"]= {
					["url"]= Avatar;
               
                    
                    ["fields"]= {

                        {
    
                            ["name"]= "username",
                            ["value"]= ""..player.Name.."",
                            ["inline"]= true
                        },
                        {
    
                            ["name"]= "Game Name",
                            ["value"]= game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
                            ["inline"]= true
                        },
                    {
                        ["name"]= "Join Code",
                        ["value"]= ""..game.JobId..""
                        ["inline"]= true
                    },
					{
						["name"]= eggs
						["value"]= yes
						["inline"]= true
                                }
            
                }
            }
        }
    local Headers = {["Content-Type"]="application/json"}
    local Encoded = HttpService:JSONEncode(Data)
    
    Request = http_request or request or HttpPost or syn.request
    local Final = {Url = getgenv().weburlhook, Body = Encoded, Method = "POST", Headers = Headers}
    Request(Final)

    while getgenv().lilybusy == true do
wait(300)
    getgenv().Number = getgenv().Number + 5

   
    local HttpService = game:GetService("HttpService")

        wait(1)
    local Data =
        {
            ["description"]= "Omg Aniueqand Script";
            ["embeds"]= {
                {            
                    ["title"]= "Github";
                    ["url"]= "https://github.com/aniueqand";
               
                    
                    ["fields"]= {
                        {
                            ["name"]= "Time Spent in The Game (minute)",
                            ["value"]= "```"..getgenv().Number.."```",
                            ["inline"]= true
                        },
{
    
                            ["name"]= "Player Name",
                            ["value"]= "```"..game:GetService("Players").LocalPlayer.Name.."```",
                            ["inline"]= true
                        },
                        {
    
                            ["name"]= "Game Name",
                            ["value"]= "```"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.."```",
                            ["inline"]= false
                        },
     {
                        ["name"]= "Join Code",
                        ["value"]= "```"..getgenv().lilyiloveyouforever.."```",
                        ["inline"]= false
                    },
}
            
                }
            }
    }
    local Headers = {["Content-Type"]="application/json"}
    local Encoded = HttpService:JSONEncode(Data)
    
    Request = http_request or request or HttpPost or syn.request
    local Final = {Url = getgenv().weburlhook, Body = Encoded, Method = "POST", Headers = Headers}
    Request(Final)

end

