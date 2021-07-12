function is-os-dark-mode \
    -d "Checks whether the OS is in dark mode"

    if set --query OS_DARK_MODE
        return (test "$OS_DARK_MODE" = "true")
    end

    set -g OS_DARK_MODE (
        osascript -l JavaScript -e 'Application("System Events").appearancePreferences.darkMode()'
    )

    return (test "$OS_DARK_MODE" = "true")
end

