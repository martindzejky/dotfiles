# PATH
# extending the default $PATH

# n - node version manager
set -gx N_PREFIX ~/.n
set -gx PATH $N_PREFIX/bin $PATH 
set -gx NODE_OPTIONS "--max_old_space_size=4096"

# android
set -gx JAVA_HOME (/usr/libexec/java_home)
set -gx ANDROID_HOME /usr/local/share/android-sdk
set -gx ANDROID_SDK_ROOT /usr/local/share/android-sdk

if test -d $ANDROID_HOME/platform-tools
    set -gx PATH $PATH "$ANDROID_HOME/platform-tools"
end

# pip
set -gx PATH $PATH ~/.local/bin

# postgres
if test -d /Applications/Postgres.app/Contents/Versions/latest/bin/
    set -gx PATH /Applications/Postgres.app/Contents/Versions/latest/bin/ $PATH
end

# my own scripts
set -gx PATH ~/.dotfiles/scripts/bin $PATH

# gettext for spacemacs
# https://github.com/bbatsov/projectile/issues/1302
if test -d /usr/local/opt/gettext/bin
    set -gx PATH /usr/local/opt/gettext/bin $PATH
end

# set fzf to use the fd command by default
set -gx FZF_DEFAULT_COMMAND "fd --type f"

# go
if test -d ~/go/bin
    set -gx PATH ~/go/bin $PATH
end

