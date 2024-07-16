-- Define the function to toggle fullscreen
function toggle_minimize()
    local fs = mp.get_property_native("window-minimized")
    mp.set_property_native("window-minimized", not fs)
end

key_bind = "]"

-- Bind the function to a custom key (e.g., "f" key)
mp.add_key_binding(key_bind, "toggle_minimize", toggle_minimize)


function on_pause_change(name, value)
    if value == true then
        mp.set_property("pause", "yes")
    end
end
mp.observe_property("window-minimized", "bool", on_pause_change)
