function is-os-dark-mode \
    -d "Checks whether the OS is in dark mode"

    set -l result (
        defaults read -g AppleInterfaceStyle 2>/dev/null # prints nothing or "Dark"
    )

    return (test "$result" = "Dark")
end

