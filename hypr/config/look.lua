hl.config({
	general = {
		gaps_in = 4,
		gaps_out = 10,
		border_size = 2,

		col = {
			active_border = "rgba(dededeff)",
			inactive_border = "rgba(1c1c1ccc)",
		},

		resize_on_border = false,
		allow_tearing = false,

		layout = "scrolling",
	},

	scrolling = {
		fullscreen_on_one_column = false,
		column_width = 0.5,
		focus_fit_method = 1, -- 0 center, 1 fit
		follow_focus = true,
		follow_min_visible = 1.0,
		explicit_column_widths = "0.333, 0.5, 0.667, 1.0",
		direction = "right",
	},

	decoration = {
		rounding = 0,
		rounding_power = 2,

		active_opacity = 1,
		inactive_opacity = 0.9,

		shadow = {
			enabled = true,
			range = 12,
			render_power = 3,
			color = "rgba(00000099)",
		},

		blur = {
			enabled = true,
			size = 6,
			passes = 3,

			ignore_opacity = true,
			new_optimizations = true,
			xray = true,

			noise = 0.02,
			contrast = 1.1,
			vibrancy = 0.202,
			vibrancy_darkness = 0.3,
		},
	},

	animations = {
		enabled = true,
	},

	dwindle = {
		preserve_split = true,
		force_split = 2,
	},

	master = {
		new_status = "master",
	},

	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		focus_on_activate = true,
		anr_missed_pings = 3,
	},

	cursor = {
		hide_on_key_press = true,
	},
})

hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1.0 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, bezier = "easeOutQuint", style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = false, speed = 0, bezier = "default" })
