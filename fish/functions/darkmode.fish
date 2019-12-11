function darkmode
    echo "uninstalling hyper-solarized-light"
    hyper u hyper-solarized-light; or true

    sleep 1

    echo "installing hyper-solarized-dark"
    hyper i hyper-solarized-dark
end

