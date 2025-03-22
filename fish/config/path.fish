# PATH
# extending the default $PATH

# n - node version manager
set -gx N_PREFIX ~/.n
set -gx PATH $N_PREFIX/bin $PATH
set -gx NODE_OPTIONS "--max_old_space_size=4096"

# yarn
if which yarn > /dev/null
    set -gx PATH $PATH (yarn global bin)
end

# bun
if test -d ~/.bun
    set -gx PATH $PATH ~/.bun/bin
end

# android
if test -e /usr/libexec/java_home
    set -gx JAVA_HOME (/usr/libexec/java_home)
end

if test -e $HOMEBREW_PREFIX/share/android-commandlinetools
    set ANDROID_HOME $HOMEBREW_PREFIX/share/android-commandlinetools
    set ANDROID_SDK_ROUTE $ANDROID_HOME
end

if test -d $ANDROID_HOME/cmdline-tools/latest/bin
    set -gx PATH $PATH "$ANDROID_HOME/cmdline-tools/latest/bin"
end

if test -d $ANDROID_HOME/platform-tools
    set -gx PATH $PATH "$ANDROID_HOME/platform-tools"
end

# pip
set -gx PATH $PATH ~/.local/bin

# postgres
if test -d /Applications/Postgres.app/Contents/Versions/latest/bin/
    set -gx PATH /Applications/Postgres.app/Contents/Versions/latest/bin/ $PATH
end

# gettext for spacemacs
# https://github.com/bbatsov/projectile/issues/1302
if test -d /usr/local/opt/gettext/bin
    set -gx PATH /usr/local/opt/gettext/bin $PATH
end

# set fzf to use the fd command by default
set -gx FZF_DEFAULT_COMMAND "fd --type f"

# visual studio code
if test -d '/Applications/Visual Studio Code.app/Contents/Resources/app/bin'
    set -gx PATH $PATH '/Applications/Visual Studio Code.app/Contents/Resources/app/bin'
end

# itch.io's butler
if test -d "$HOME/Library/Application Support/itch/apps/butler"
    set -gx PATH $PATH "$HOME/Library/Application Support/itch/apps/butler"
end

