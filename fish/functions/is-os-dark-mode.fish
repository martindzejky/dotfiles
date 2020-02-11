function is-os-dark-mode
    set -l result (osascript -l JavaScript -e 'Application("System Events").appearancePreferences.darkMode()')
    return (test "$result" = "true")
end

