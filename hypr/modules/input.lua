hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = true,
        },
    },
})

-- Added a scale velocity multiplier to make it ultra-sensitive
hl.gesture({ 
    fingers = 3, 
    direction = "horizontal", 
    action = "workspace", 
    scale = 2.0 
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})


-- Replace "synaptics-touchpad" with your exact device name from hyprctl devices
hl.device({
    name = "synaptics-touchpad",
    enabled = true,
    tap_to_click = true,
    natural_scroll = true
})
