-- Default
hl.window_rule({ match = { class = ".*" }, suppress_event = "maximize" })

-- Fix some dragging issues with XWayland
hl.window_rule({
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

-- Custom
hl.window_rule({ match = { class = "^(com.mitchellh.ghostty)$" }, float = true, center = true, size = { 96, 22 } })
hl.window_rule({ match = { class = "^(org.pulseaudio.pavucontrol)$" }, float = true, center = true })
hl.window_rule({ match = { class = "^(zen)$" }, opaque = true })
hl.window_rule({ match = { class = "^(firefox)$" }, opaque = true })
hl.window_rule({ match = { class = "^(burp-StartBurp)$" }, opaque = true })
hl.window_rule({ match = { class = "^(Postman)$" }, opaque = true })
hl.window_rule({ match = { class = "(org.gnome.Nautilus|Files|files)" }, float = true })
hl.window_rule({ match = { class = "zen", title = "^(Save*)$" }, float = true, size = { 860, 920 } })
hl.window_rule({ match = { class = "(YouTube Music Desktop App)" }, opacity = "0.8", float = true, center = true })
hl.window_rule({ match = { title = "imv" }, float = true })

hl.window_rule({ match = { class = "^(kitty)$" }, opacity = "0.95" })

-- DMS
hl.window_rule({ match = { class = "org.quickshell" }, float = true, size = { 860, 920 }, opaque = true })

-- GNOME apps
hl.window_rule({ match = { class = "org.gnome" }, rounding = 12 })
hl.window_rule({ match = { class = "org.gnome" }, border_size = 0 })
