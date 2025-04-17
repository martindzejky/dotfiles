# PATH
# extending the default $PATH

# n - node version manager
set -gx N_PREFIX ~/.n
fish_add_path --path $N_PREFIX/bin
set -gx NODE_OPTIONS "--max_old_space_size=4096"

# yarn
if which yarn > /dev/null
  fish_add_path --path (yarn global bin)
end

# bun
if test -d ~/.bun
  fish_add_path --path ~/.bun/bin
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
  fish_add_path --path "$ANDROID_HOME/cmdline-tools/latest/bin"
end

if test -d $ANDROID_HOME/platform-tools
  fish_add_path --path "$ANDROID_HOME/platform-tools"
end

# pip
fish_add_path --path ~/.local/bin

# postgres
if test -d /Applications/Postgres.app/Contents/Versions/latest/bin/
  fish_add_path --path /Applications/Postgres.app/Contents/Versions/latest/bin/
end

# set fzf to use the fd command by default
set -gx FZF_DEFAULT_COMMAND "fd --type f"

# itch.io's butler
if test -d "$HOME/Library/Application Support/itch/apps/butler"
  fish_add_path --path "$HOME/Library/Application Support/itch/apps/butler"
end

