-- =============================================================================
-- Hyprland Window Rules (Lua Syntax)
-- =============================================================================

-- 1. Floating Terminal App (e.g., Kitty running nmtui from your Waybar)
hl.window_rule({
    name = "network-manager-float",
    match = { 
        class = "^(kitty)$",
        title = "^(nmtui)$" 
    },
    float = true,
    center = true,
    size = { 800, 500 }
})

-- 2. General Utility/System Floating Rules (e.g., Audio Control, File Choosers)
hl.window_rule({
    name = "system-utilities-float",
    match = { 
        class = "^(pavucontrol|blueman-manager|org.gnome.FileRoller)$" 
    },
    float = true,
    center = true,
    size = { 750, 550 }
})

-- 3. Slightly Mute Opacity on Background Windows (Complements your style sheet)
-- This keeps your focused window crisp and dims background apps nicely
hl.window_rule({
    name = "global-inactive-dim",
    match = { 
        class = ".*" -- Matches everything
    },
    opacity = "1.0 0.90" -- Format: "active_opacity inactive_opacity"
})

-- 4. Open specific apps directly on chosen workspaces
-- Matches your colored workspace dots!
hl.window_rule({
    name = "browser-workspace",
    match = { class = "^(firefox)$" },
    workspace = 2 -- Automatically opens Firefox on your second workspace dot
})

hl.window_rule({
    name = "discord-workspace",
    match = { class = "^(vesktop)$" },
    workspace = 5 -- Opens Discord automatically on your fifth workspace dot
})

-- 5. PiP (Picture-in-Picture) Video Player Rules
hl.window_rule({
    name = "pip-video",
    match = { title = "^(Picture-in-Picture)$" },
    float = true,
    pin = true, -- Shows up across all workspaces
    move = { "100%-460", "100%-290" } -- Sticks it neat to the bottom right corner
})
