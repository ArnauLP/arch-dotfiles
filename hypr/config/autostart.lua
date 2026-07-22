hl.on("hyprland.start", function()
	-- AUTH
	hl.exec_cmd("systemctl --user start hyprpolkitagent")

	-- Wallpaper
	hl.exec_cmd("awww-daemon")

	-- Notif
	hl.exec_cmd("dunst")

	-- Bar
	hl.exec_cmd("dms run")

	-- Clipboard history
	hl.exec_cmd("wl-paste --watch cliphist store &")

	-- Lock & Idle (handled by dms)
	-- hl.exec_cmd("hypridle")

	-- Portal XDG
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

	-- cursor stuff (handled by dms)
	-- hl.exec_cmd("hyprctl setcursor Adwaita 24")
end)
