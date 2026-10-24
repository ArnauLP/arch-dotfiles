hl.on("hyprland.start", function()
	-- AUTH
	hl.exec_cmd("systemctl --user start hyprpolkitagent")

	--keyring
	hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")

	-- Wallpaper
	hl.exec_cmd("awww-daemon")

	-- Notif
	-- hl.exec_cmd("dunst") -- (handled by dms)

	-- Bar
	hl.exec_cmd("dms run")

	-- Restarts VRR after restart (fix temporal, es culpa del putu kernel 7.2)
	hl.exec_cmd("bash ~/.config/hypr/scripts/vrr-resume.sh")

	-- Clipboard history
	hl.exec_cmd("wl-paste --watch cliphist store &")

	-- Lock & Idle (handled by dms)
	-- hl.exec_cmd("hypridle")

	-- Portal XDG
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

	-- cursor stuff (handled by dms)
	-- hl.exec_cmd("hyprctl setcursor Adwaita 24")
end)
