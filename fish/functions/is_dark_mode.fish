function is_dark_mode
    echo (osascript -l JavaScript -e 'Application("System Events").appearancePreferences.darkMode()')
end

