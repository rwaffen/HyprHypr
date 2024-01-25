# shell
yay -S zsh
yay -S git
yay -S kitty # better terminal
yay -S wget  # better curl
yay -S less  # better more
yay -S eza   # better ls
yay -S dysk  # better df

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp config/zshrc ~/.zshrc
chsh -s /bin/zsh

cp -vr config/kitty ~/.config

# wm
yay -S hyprland  # wayland composer
yay -S hyprpaper # wallpaper handler
yay -S nautilus  # gnome file manager
yay -S gdm       # gnome greeter / login
yay -S loupe     # lightweight image viewer

yay -S webp-pixbuf-loader     # lib to render webp
yay -S gnome-control-center   # optional gnome settings
yay -S xdg-desktop-portal-gtk # for desktop sharing needed somehow

cp -vr config/hypr ~/.config

# waybar
yay -S waybar                 # info bar
yay -S network-manager-applet # applet
yay -S blueman                # applet
yay -S bluez-utils            # applet
yay -S pavucontrol            # applet
yay -S pamixer                # applet
yay -S mako                   # notifications

yay -R wofi # remove wofi  - obsolete
yay -S rofi # install rofi - replacement

cp -vr config/waybar ~/.config
cp -vr config/mako ~/.config
cp -vr config/rofi ~/.config
cp -vr local/share/rofi ~/.local/share/rofi

# Applications
yay -S syncthing
sudo systemctl enable --now syncthing@${USER}.service

yay -S telegram-desktop # chat tool
yay -S steam            # needs multilib
yay -S discord          # chat for gamers
yay -S google-chrome
yay -S 1password

# proton GE
wget https://github.com/GloriousEggroll/proton-ge-custom/releases/download/GE-Proton8-27/GE-Proton8-27.tar.gz
mkdir -p ~/.steam/root/compatibilitytools.d
tar -xf GE-Proton8-27.tar.gz -C ~/.steam/root/compatibilitytools.d/
rm GE-Proton8-27.tar.gz

# remove if installed by dependencies
yay -R thunderbird
yay -R firefox
yay -R dolphin

# Fonts
yay -S noto-fonts-cjk
yay -S noto-fonts-emoji
yay -S ttf-jetbrains-mono-nerd
yay -S ttf-nerd-fonts-symbols-common
yay -S adobe-source-code-pro-fonts

# other config files
cp -v config/vimrc ~/.vimrc
cp -v config/user-dirs.conf ~/.config
cp -v config/user-dirs.dirs ~/.config
