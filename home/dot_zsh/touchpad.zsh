toggle_touchpad() {
  current_state=$(gsettings get org.gnome.desktop.peripherals.touchpad send-events)
  if [[ "$current_state" == "'enabled'" ]]; then
    gsettings set org.gnome.desktop.peripherals.touchpad send-events 'disabled-on-external-mouse'
    echo "Touchpad set to 'disabled-on-external-mouse'"
  else
    gsettings set org.gnome.desktop.peripherals.touchpad send-events 'enabled'
    echo "Touchpad set to 'enabled'"
  fi
}
alias touchpad='toggle_touchpad'
