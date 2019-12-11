function lightmode
    echo "uninstalling hyper-solarized-dark"
    hyper u hyper-solarized-dark; or true

    sleep 1

    echo "installing hyper-solarized-light"
    hyper i hyper-solarized-light
end

