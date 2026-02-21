local skinz = {}
for i,v in game.ReplicatedFirst.skins:GetChildren() do
    skinz[v.id.Value]=v
end

for i,v in skinz do
        local bskin = Instance.new("Part", workspace.hub)
        bskin.Name = "bskn"..i; bskin.Position = workspace.char.Position; bskin.Anchored = true; bskin.CanCollide = false
        local skin = Instance.new("StringValue", bskin) skin.Name = "skin"; skin.Value = v.skin.Value
        local icon = Instance.new("IntValue", bskin) icon.Name = "icon"; icon.Value = v.icon.Value
        local id = Instance.new("IntValue", bskin) id.Name = "id"; id.Value = i
        local pos = Instance.new("Vector3Value", bskin) pos.Name = "pos"; pos.Value = workspace.char.Position
        workspace.char.Position = bskin.Position + Vector3.new(0, 2)
    wait(3)
end