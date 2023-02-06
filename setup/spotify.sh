#!/bin/bash

# prepare spotify for specitify
sudo chmod 777 /opt/spotify
sudo chmod 777 -R /opt/spotify/Apps

# launch spotify to generate configuration files
spotify &; disown

# backup spicetify
spicetify backup

# setup config
spicetify config current_theme catppuccin-mocha
spicetify config color_scheme lavender
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
spicetify config extensions catppuccin-mocha.js

# apply config
spicetify apply
