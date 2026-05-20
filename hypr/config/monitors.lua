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

-- Other random monitors
hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = "1",
})
