# shell
yay -S zsh   # better bash
yay -S git   # better svn/cvs
yay -S kitty # better terminal
yay -S wget  # better curl
yay -S less  # better more
yay -S eza   # better ls
yay -S dysk  # better df
yay -S htop  # better top
yay -S ncdu  # better du

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp config/zshrc ~/.zshrc
chsh -s /bin/zsh

rm -rf ~/.config/kitty && ln -s /opt/install/HyprHypr/config/kitty ~/.config/kitty
rm ~/.zshrc && ln -s /opt/install/HyprHypr/config/zshrc ~/.zshrc
rm ~/.vimrc && ln -s /opt/install/HyprHypr/config/vimrc ~/.vimrc

# wm
yay -S hyprland         # wayland composer
yay -S hyprpaper        # wallpaper handler
yay -S hyprshot         # screenshots
yay -S swaylock-effects # lockscreen

## gnome
yay -S nautilus             # gnome file manager
yay -S gdm                  # gnome greeter / login
yay -S loupe                # lightweight image viewer
yay -S gnome-control-center # optional gnome settings
yay -S extension-manager    # gnome extension manager
yay -S language-pack-gnome-de

# install appindicator
# https://linuxiac.com/how-to-enable-system-tray-icons-in-gnome/

yay -S webp-pixbuf-loader     # lib to render webp
yay -S ffmpegthumbnailer      # lib to get video thumbnails
yay -S xdg-desktop-portal-gtk # for desktop sharing needed somehow

rm -rf ~/.config/swaylock   && ln -s /opt/install/HyprHypr/config/swaylock ~/.config/swaylock
rm -rf ~/.config/hypr       && ln -s /opt/install/HyprHypr/config/hypr ~/.config/hypr
rm ~/.config/user-dirs.conf && ln -s /opt/install/HyprHypr/config/user-dirs.conf ~/.config/user-dirs.conf
rm ~/.config/user-dirs.dirs && ln -s /opt/install/HyprHypr/config/user-dirs.dirs ~/.config/user-dirs.dirs
rm ~/.config/mimeapps.list  && ln -s /opt/install/HyprHypr/config/mimeapps.list ~/.config/mimeapps.list

# waybar
yay -S waybar                 # info bar
yay -S network-manager-applet # applet
yay -S blueman                # applet
yay -S bluez-utils            # applet
yay -S pavucontrol            # applet
yay -S pamixer                # applet
yay -S mako                   # notifications

rm -rf ~/.config/waybar && ln -s /opt/install/HyprHypr/config/waybar ~/.config/waybar
rm -rf ~/.config/mako && ln -s /opt/install/HyprHypr/config/mako ~/.config/mako

# Application starter
yay -R wofi # remove wofi  - obsolete
yay -S rofi # install rofi - replacement

rm -rf ~/.config/rofi && ln -s /opt/install/HyprHypr/config/rofi ~/.config/rofi
rm -rf ~/.local/share/rofi && ln -s /opt/install/HyprHypr/local/share/rofi ~/.local/share/rofi

# Applications
yay -S syncthing
sudo systemctl enable --now syncthing@${USER}.service

yay -S telegram-desktop # chat tool
yay -S steam            # needs multilib
yay -S discord          # chat for gamers
yay -S google-chrome    # brwoser :P
yay -S 1password        # password manager
yay -S vlc              # media player
yay -S mc               # Norton Commander clone
yay -S code             # Open Source build of Visual Studio Code
yay -S hexchat          # irc, x-chat fork/clone

rm -rf ~/.config/mc && ln -s /opt/install/HyprHypr/config/mc ~/.config/mc
rm -rf ~/.config/htop && ln -s /opt/install/HyprHypr/config/htop ~/.config/htop

# proton GE
wget https://github.com/GloriousEggroll/proton-ge-custom/releases/download/GE-Proton8-27/GE-Proton8-27.tar.gz
mkdir -p ~/.steam/root/compatibilitytools.d
tar -xf GE-Proton8-27.tar.gz -C ~/.steam/root/compatibilitytools.d/
rm GE-Proton8-27.tar.gz
yay -S protontricks
yay -S gamemode

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

# misc
rm -f ~/.config/locale.conf && ln -s /opt/install/HyprHypr/config/locale.conf ~/.config/locale.conf
