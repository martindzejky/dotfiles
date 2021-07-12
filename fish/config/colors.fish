# COLORS for bat and delta
# https://github.com/sharkdp/bat
# https://github.com/dandavison/delta

if is-os-dark-mode
    set -gx BAT_THEME "Solarized (dark)"
else
    set -gx BAT_THEME "Solarized (light)"
end

