require("config/programs")

MOD = "SUPER + "

-- PROGRAMS
hl.bind(MOD .. "SHIFT + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(MOD .. "SHIFT + B", hl.dsp.exec_cmd(browser))
hl.bind(MOD .. "SHIFT + E", hl.dsp.exec_cmd(fileManager))
hl.bind("Print", hl.dsp.exec_cmd("grim ~/Pictures/Screenshots/$(date +%Y%m%d_%H%M%S).png"))
hl.bind(MOD .. "Print", hl.dsp.exec_cmd("grim - | wl-copy"))
hl.bind(MOD .. "SHIFT + Print", hl.dsp.exec_cmd("grim -g $(slurp) - | wl-copy"))

-- UTILITIES
hl.bind(MOD .. "W", hl.dsp.window.kill())
hl.bind(MOD .. "F", hl.dsp.window.float({ action = "toggle", move = { 0, 0 } }))
hl.bind(MOD .. "ESC", hl.dsp.exit())
hl.bind(MOD .. "F11", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind("SUPER + SHIFT + O", hl.dsp.window.set_prop({ prop = "opaque", value = "toggle" }))

hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- FOCUS
hl.bind(MOD .. "H", hl.dsp.focus({ direction = "l" }))
hl.bind(MOD .. "L", hl.dsp.focus({ direction = "r" }))
hl.bind(MOD .. "K", hl.dsp.focus({ direction = "u" }))
hl.bind(MOD .. "J", hl.dsp.focus({ direction = "d" }))

-- WINDOWS
hl.bind(MOD .. "SHIFT + H", hl.dsp.window.move({ direction = "l" }))
hl.bind(MOD .. "SHIFT + L", hl.dsp.window.move({ direction = "r" }))
hl.bind(MOD .. "SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind(MOD .. "SHIFT + J", hl.dsp.window.move({ direction = "d" }))

hl.bind(MOD .. "SHIFT + left", hl.dsp.window.resize({ x = -40, y = 0, relative = true }), { repeating = true })
hl.bind(MOD .. "SHIFT + right", hl.dsp.window.resize({ x = 40, y = 0, relative = true }), { repeating = true })
hl.bind(MOD .. "SHIFT + up", hl.dsp.window.resize({ x = 0, y = -40, relative = true }), { repeating = true })
hl.bind(MOD .. "SHIFT + down", hl.dsp.window.resize({ x = 0, y = 40, relative = true }), { repeating = true })

hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- WORKSPACES
for i = 1, 10 do
	local key = i % 10
	hl.bind(MOD .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(MOD .. "SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- DMS
hl.bind(MOD .. "space", hl.dsp.exec_cmd("dms ipc call spotlight toggle"))
hl.bind(MOD .. "Y", hl.dsp.exec_cmd("dms ipc call dankdash wallpaper"))
hl.bind(MOD .. "TAB", hl.dsp.exec_cmd("dms ipc call hypr toggleOverview"))
