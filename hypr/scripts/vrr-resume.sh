#!/usr/bin/env bash
# Workaround: after suspend, the damn VRR gets stuck at 1fps if misc.vrr = 1.
# listens PrepareForSleep of logind and when the system wake's up, vrr is set to 0 and then to 1 again.

# fix duplicated instances
exec 9>"${XDG_RUNTIME_DIR:-/tmp}/vrr-resume.lock"
flock -n 9 || exit 0

dbus-monitor --system \
  "type='signal',interface='org.freedesktop.login1.Manager',member='PrepareForSleep'" |
  while read -r line; do
    # PrepareForSleep(false) = system just woke up
    if [[ $line == *"boolean false"* ]]; then
      sleep 2
      hyprctl eval 'hl.config({ misc = { vrr = 0 } })' >/dev/null
      sleep 1
      hyprctl eval 'hl.config({ misc = { vrr = 1 } })' >/dev/null
    fi
  done
