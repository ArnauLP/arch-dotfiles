hl.config({
	input = {
		kb_layout = "es",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,

		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

		touchpad = {
			natural_scroll = true,
			scroll_factor = 0.25,
		},
	},
})

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

-- per-device
hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.5,
})
