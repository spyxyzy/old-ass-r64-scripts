if r64protected then
    print("already protected!")
    return
end

getgenv().r64protected = true

workspace.share.discord:Destroy()

local fake_discord = Instance.new("RemoteEvent")
fake_discord.Parent = workspace.share
fake_discord.Name = "discord"

local fake_kick = Instance.new("RemoteEvent")
fake_kick.Parent = workspace.share
fake_kick.Name = "kickme"

workspace.share.kickme.Name = "don't actually kick me"


print("protected!")