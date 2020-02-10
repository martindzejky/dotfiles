function is-os-dark-mode
    set -l result (defaults read -g AppleInterfaceStyle 2>/dev/null)
    return (test "$result" = "Dark")
end

