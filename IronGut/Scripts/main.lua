-- IronGut.lua
print("[IronGut] Loaded.")

local noNeeds = false

-- Toggle hunger/thirst system
RegisterKeyBind(Key.F9, function()
    local stats = FindFirstOf("BP_PlayerStats_C")
    if not stats then
        print("[IronGut] ERROR: BP_PlayerStats_C not found.")
        return false
    end

    noNeeds = not noNeeds
    -- Narrow down the exposed shit
    if stats.SetNoHunger then stats:SetNoHunger(noNeeds) end
    if stats.SetNoThirst then stats:SetNoThirst(noNeeds) end

    print(string.format(
      "[IronGutToggle] %s hunger & thirst.",
      noNeeds and "DISABLED" or "RESTORED"
    ))
    return false
end)