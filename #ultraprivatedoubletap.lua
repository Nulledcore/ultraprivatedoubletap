local max_usr = ui.reference("MISC", "Settings", "sv_maxusrcmdprocessticks")
local dt_lua_enable = ui.new_checkbox("rage", "other", "Improved double tap")
client.set_event_callback("run_command", function() if not ui.get(dt_lua_enable) then ui.set(max_usr, 16) return end ui.set(max_usr, 20) end)