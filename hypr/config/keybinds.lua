local programs = require("config/programs")

local MOD = "SUPER + "

hl.bind(MOD .. "RETURN", hl.dsp.exec_cmd(programs.terminal))
hl.bind(MOD .. "W", hl.dsp.window.close())
hl.bind(MOD .. "B", hl.dsp.exec_cmd(programs.browser))
hl.bind(MOD .. "ESCAPE", hl.dsp.exit())
hl.bind(MOD .. "E", hl.dsp.exec_cmd(programs.fileManager))
hl.bind(MOD .. "V", function()
	hl.dispatch(hl.dsp.window.float({ action = "toggle" }))
	hl.dispatch(hl.dsp.window.center())
end)

-- hl.bind(MOD .. "space", hl.dsp.exec_cmd(programs.menu))
hl.bind(MOD .. "F11", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
-- hl.bind(MOD .. "ALT + ESCAPE", hl.dsp.exec_cmd("pidof hyprlock || hyprlock"))

-- focus
hl.bind(MOD .. "left", hl.dsp.focus({ direction = "l" }))
hl.bind(MOD .. "H", hl.dsp.focus({ direction = "l" }))
hl.bind(MOD .. "right", hl.dsp.focus({ direction = "r" }))
hl.bind(MOD .. "L", hl.dsp.focus({ direction = "r" }))
hl.bind(MOD .. "up", hl.dsp.focus({ direction = "u" }))
hl.bind(MOD .. "K", hl.dsp.focus({ direction = "u" }))
hl.bind(MOD .. "down", hl.dsp.focus({ direction = "d" }))
hl.bind(MOD .. "J", hl.dsp.focus({ direction = "d" }))

-- move window
hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.move({ direction = "r" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "d" }))

-- resize
hl.bind(MOD .. "SHIFT + left", hl.dsp.window.resize({ x = -40, y = 0, relative = true }))
hl.bind(MOD .. "SHIFT + right", hl.dsp.window.resize({ x = 40, y = 0, relative = true }))
hl.bind(MOD .. "SHIFT + up", hl.dsp.window.resize({ x = 0, y = -40, relative = true }))
hl.bind(MOD .. "SHIFT + down", hl.dsp.window.resize({ x = 0, y = 40, relative = true }))

-- workspaces (switch / move window to)
for i = 1, 10 do
	local key = i % 10
	hl.bind(MOD .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(MOD .. "SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- special workspace (scratchpad)
-- hl.bind(MOD .. "S", hl.dsp.workspace.toggle_special("magic"))
-- hl.bind(MOD .. "SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- scroll workspaces
hl.bind(MOD .. "mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(MOD .. "mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- mouse move / resize
hl.bind(MOD .. "mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(MOD .. "mouse:273", hl.dsp.window.resize(), { mouse = true })

-- media keys
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

-- playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- screenshots
hl.bind("SUPER + CTRL + Print", hl.dsp.exec_cmd("grim ~/Pictures/Screenshots/$(date +%Y%m%d_%H%M%S).png"))
hl.bind("SUPER + Print", hl.dsp.exec_cmd("grim - | wl-copy"))
hl.bind("SUPER + SHIFT + Print", hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy'))

hl.bind("SUPER + SHIFT + O", hl.dsp.window.set_prop({ prop = "opaque", value = "toggle" }))

-- DMS
hl.bind(MOD .. "space", hl.dsp.exec_cmd("dms ipc call spotlight toggle"))
hl.bind(MOD .. "Y", hl.dsp.exec_cmd("dms ipc call wallhavenCarousel toggle"))
hl.bind(MOD .. "TAB", hl.dsp.exec_cmd("dms ipc call hypr toggleOverview"))

-- scrolling layout
-- SUPER + H/L already move focus and scroll

-- move column
hl.bind(MOD .. "CTRL + H", hl.dsp.layout("swapcol l"))
hl.bind(MOD .. "CTRL + L", hl.dsp.layout("swapcol r"))
hl.bind(MOD .. "CTRL + J", hl.dsp.layout("movewindowto d"))
hl.bind(MOD .. "CTRL + K", hl.dsp.layout("movewindowto u"))

-- column width presets
hl.bind(MOD .. "R", hl.dsp.layout("colresize +conf"))
hl.bind(MOD .. "SHIFT + R", hl.dsp.layout("colresize -conf"))

-- manual resize
hl.bind(MOD .. "minus", hl.dsp.layout("colresize -0.1"))
hl.bind(MOD .. "SHIFT + minus", hl.dsp.layout("colresize +0.1"))

-- window height
hl.bind(MOD .. "dead_acute", hl.dsp.window.resize({ x = 0, y = 50, relative = true }))
hl.bind(MOD .. "SHIFT + dead_acute", hl.dsp.window.resize({ x = 0, y = -50, relative = true }))

-- fullscreen / maximize column
hl.bind(MOD .. "F", hl.dsp.layout("colresize 1.0"))
hl.bind(MOD .. "SHIFT + F", hl.dsp.layout("colresize 0.5"))

-- center column
hl.bind(MOD .. "C", hl.dsp.layout("focuswrap l"))
hl.bind(MOD .. "SHIFT + C", hl.dsp.layout("togglefit"))

-- consume / expel
hl.bind(MOD .. "comma", hl.dsp.layout("movewindowto l"))
hl.bind(MOD .. "period", hl.dsp.layout("movewindowto r"))
