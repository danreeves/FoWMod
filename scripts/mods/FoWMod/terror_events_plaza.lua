-- luacheck: globals Managers
local function num_spawned_enemies()
  local spawned_enemies = Managers.state.conflict:spawned_units()

  return #spawned_enemies
end

local terror_events = {
  plaza_disable_pacing = {
    {
      "control_pacing",
      enable = false
    },
    {
      "control_specials",
      enable = false
    }
  },

  plaza_load_bosses = {
    {
      "force_load_breed_package",
      breed_name = "skaven_rat_ogre"
    },
    {
      "force_load_breed_package",
      breed_name = "skaven_stormfiend"
    },
    {
      "force_load_breed_package",
      breed_name = "chaos_spawn"
    },
    {
      "force_load_breed_package",
      breed_name = "chaos_troll"
    }
  },

  plaza_wave_1 = {
    {
      "set_master_event_running",
      name = "survival"
    },
    {
      "spawn_at_raw",
      breed_name = "skaven_rat_ogre",
      spawner_id = "manual_a",
    },
    {
      "continue_when",
      duration = 80,
      condition = function (t)
        return num_spawned_enemies() < 1
      end
    },
    {
      "spawn_at_raw",
      breed_name = "skaven_rat_ogre",
      spawner_id = "manual_a",
    },
    {
      "continue_when",
      duration = 80,
      condition = function (t)
        return num_spawned_enemies() < 1
      end
    },
    {
      "flow_event",
      flow_event_name = "wave_1_complete"
    },
    {
      "delay",
      duration = 5
    },
    {
      "flow_event",
      flow_event_name = "wave_2_complete"
    },
    {
      "delay",
      duration = 5
    },
    {
      "flow_event",
      flow_event_name = "wave_3_complete"
    },
    {
      "delay",
      duration = 5
    },
    {
      "flow_event",
      flow_event_name = "wave_4_complete"
    },
    {
      "delay",
      duration = 5
    },
    {
      "flow_event",
      flow_event_name = "wave_5_complete"
    },
    {
      "delay",
      duration = 5
    },
    {
      "flow_event",
      flow_event_name = "wave_6_complete"
    },
    {
      "delay",
      duration = 5
    },
    {
      "flow_event",
      flow_event_name = "wave_7_complete"
    },
    {
      "delay",
      duration = 5
    },
    {
      "flow_event",
      flow_event_name = "wave_8_complete"
    },
  },
}

return terror_events
