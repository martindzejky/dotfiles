function toggle-dark-mode -d "Toggles dark mode in iTerm"

    # TODO
    return

    if test "$ITERM_PROFILE" = "Light"
        echo -ne "\033]50;SetProfile=Dark\a"
        set -x ITERM_PROFILE "Dark"
    else
        echo -ne "\033]50;SetProfile=Light\a"
        set -x ITERM_PROFILE "Light"
    end
end

