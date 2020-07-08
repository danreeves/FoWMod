-- luacheck: globals get_mod
local mod = get_mod("FoWMod")

mod:dofile("scripts/mods/FoWMod/debug_spawners")
local custom_terror_events = mod:dofile("scripts/mods/FoWMod/terror_events_plaza")

local default_terror_events = TerrorEventBlueprints.plaza

if mod:is_enabled() then
  TerrorEventBlueprints.plaza = custom_terror_events
end

function mod.on_enabled()
  TerrorEventBlueprints.plaza = custom_terror_events
end

function mod.on_disabled()
  TerrorEventBlueprints.plaza = default_terror_events
end

