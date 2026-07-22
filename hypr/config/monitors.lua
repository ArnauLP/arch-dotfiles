-- Main monitor for desktop (2560x1440@164.99hz)
hl.monitor({
	output = "DP-3",
	mode = "2560x1440@164",
	position = "0x0",
	scale = "1",
	vrr = 1,
})

-- Secondary monitor for desktop (left)
hl.monitor({
	output = "HDMI-A-3",
	mode = "1920x1080@60",
	position = "2560x256",
	scale = "1",
})

-- Laptop
hl.monitor({
	output = "eDP-1",
	mode = "preferred",
	position = "auto",
	scale = "1.6",
})

-- Other random monitors
hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = "1",
})

hl.config({
	xwayland = {
		force_zero_scaling = true,
	},

	misc = {
		vrr = 1,
	},
})

hl.env("GDK_SCALE", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
