local hats = {}
for i,v in game.ReplicatedFirst.hats:GetChildren() do
    hats[v.id.Value]=v
end

for i,v in hats do
    local bhat = Instance.new("Part", workspace.hub)
    bhat.Name = "bhat"..i; bhat.Position = workspace.char.Position; bhat.Anchored = true; bhat.CanCollide = false
    local hat = Instance.new("StringValue", bhat) hat.Name = "hat"; hat.Value = v.hat.Value
    local icon = Instance.new("IntValue", bhat) icon.Name = "icon"; icon.Value = v.icon.Value
    local desc = Instance.new("StringValue", bhat) desc.Name = "desc"; desc.Value = v.desc.Value
    local price = Instance.new("IntValue", bhat) price.Name = "price"; price.Value = v.price.Value
    local off = Instance.new("Attachment", bhat) off.Name = "off"
    local id = Instance.new("IntValue", bhat) id.Name = "id"; id.Value = i
    local pos = Instance.new("Vector3Value", bhat) pos.Name = "pos"; pos.Value = workspace.char.Position
    workspace.char.Position = bhat.Position + Vector3.new(0, 2)
wait(3)