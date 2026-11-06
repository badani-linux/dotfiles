-- =============================================================================
-- Catppuccin Mocha Color Palette (Hex Strings mapped for Lua)
-- =============================================================================
local mocha = {
    rosewater = "0xfff5e0dc",
    flamingo  = "0xfff2cdcd",
    pink      = "0xfff5c2e7",
    mauve     = "0xffcba6f7",
    red       = "0xfff38ba8",
    maroon    = "0xffeba0ac",
    peach     = "0xfffab387",
    yellow    = "0xfff9e2af",
    green     = "0xffa6e3a1",
    teal      = "0xff94e2d5",
    sky       = "0xff89dceb",
    sapphire  = "0xff74c7ec",
    blue      = "0xff89b4fa",
    lavender  = "0xffb4befe",
    text      = "0xffcdd6f4",
    surface2  = "0xff585b70",
    surface1  = "0xff45475a",
    surface0  = "0xff313244",
    base      = "0xff1e1e2e",
    mantle    = "0xff181825",
    crust     = "0xff11111b"
}


hl.config({
    -- =============================================================================
    -- General Layout Settings
    -- =============================================================================
    general = {
        gaps_in = 4,   -- Gaps between windows
        gaps_out = 8,  -- Outer margins (Gives your floating Waybar breathing room)
        border_size = 2,
        
        -- Multi-color gradient active border running from Mauve to Sapphire
        col = {
            active_border = {
                colors = { mocha.mauve, mocha.sapphire },
                angle = 45
            },
            inactive_border = mocha.surface0,
        },
        layout = "dwindle",
    },

    -- =============================================================================
    -- Window Decorations and Depth Shadows
    -- =============================================================================
    decoration = {
        rounding = 1,          -- Matches your 8px Waybar pill corners
        active_opacity = 1.0,
        inactive_opacity = 0.92, -- Subtle opacity dimming on background windows
        
        shadow = {
            enabled = true,
            range = 10,
            render_power = 3,
            color = "rgba(17, 17, 27, 0.6)", -- Muted Catppuccin crust shadow
        },
        
        blur = {
            enabled = true,
            size = 5,
            passes = 2,
            new_optimizations = true,
            ignore_opacity = true,
        },
    },

    -- =============================================================================
    -- Snappy Windows & Workspace Slide Transitions
    -- =============================================================================
    animations = {
        enabled = true,
        
        -- Customize curves using table structures
        bezier = {
            { name = "fluent_curve", r1 = 0.16, r2 = 1, r3 = 0.3, r4 = 1 }
        },
        
        -- Map animations directly to the custom bezier curve
        animation = {
            { name = "windows",      enabled = true, speed = 3.5, curve = "fluent_curve", style = "popin 80%" },
            { name = "windowsOut",   enabled = true, speed = 3.0, curve = "fluent_curve", style = "popin 80%" },
            { name = "border",       enabled = true, speed = 5.0, curve = "default" },
            { name = "borderangle",  enabled = true, speed = 10.0, curve = "default" },
            { name = "fade",         enabled = true, speed = 3.0, curve = "default" },
            { name = "workspaces",   enabled = true, speed = 4.0, curve = "fluent_curve", style = "slide" },
        }
    },

-- Add these as completely standalone lines in your hyprland.lua
hl.layer_rule({ match = { namespace = "wofi" }, blur = true, ignore_alpha = 0.5 }),
hl.layer_rule({ match = { namespace = "launcher" }, blur = true, ignore_alpha = 0.5 }),

-- Fix for your waybar too
hl.layer_rule({ match = { namespace = "waybar" }, blur = true, ignore_alpha = 0.5 })

})
