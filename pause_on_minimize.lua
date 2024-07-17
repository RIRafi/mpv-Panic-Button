-- Bind the function to a custom key (e.g., "f" key)

key_bind = "]" --Edit this

-- Define the function to toggle minimization
function toggle_minimize()
    local fs = mp.get_property_native("window-minimized")
    mp.set_property_native("window-minimized", not fs)
end

mp.add_key_binding(key_bind, "toggle_minimize", toggle_minimize)

-- Define the function to pause when minimaztion is occurred
function on_pause_change(name, value)
    if value == true then
        mp.set_property("pause", "yes")
    end
end
mp.observe_property("window-minimized", "bool", on_pause_change)
