if not game:IsLoaded() then
    game.Loaded:Wait()
end

local url = "https://raw.githubusercontent.com/matthewmaclean2010-hash/drac.cc/main/drac.cc_ultimate_VIP.lua"

local ok, src = pcall(game.HttpGet, game, url)
if not ok then
    warn("Failed to fetch script")
    return
end

local exec, err = pcall(function()
    loadstring(src)()
end)

if not exec then
    warn(err)
end
