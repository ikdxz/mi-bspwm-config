#!/bin/bash

# Cierra EWW si está abierto
eww close-all

# Abre Rofi
rofi -show drun


# Espera a que Rofi se cierre y luego abre EWW de nuevo
while pgrep -x "rofi" >/dev/null; do
    sleep 0.1
done

# Abre EWW nuevamente después de cerrar Rofi
eww -c $HOME/.config/eww --restart open example &
