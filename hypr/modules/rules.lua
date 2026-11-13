-- =============================================================================
-- Hyprland Window Rules (Lua Syntax)
-- =============================================================================

hl.window_rule({
    name = "suppress-kitty-maximize",
    match = { 
        class = "kitty" 
    },
    suppress_event = "maximize"
})

hl.config({
    -- ... your general and decoration settings ...

    dwindle = {
        preserve_split = true,
        force_split = 2,       -- 2 forces new windows to split to the right/bottom
        smart_split = false,   -- Turn off smart_split so it follows rules purely automatically
    }
})
