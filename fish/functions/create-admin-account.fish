function create-admin-account \
    -d "Create an admin account on the current Exponea instance"

    set mail "martin.jakubik@exponea.com"

    # first, check whether I already have an account on the instance
    echo "checking for my account on the instance"

    app-toolbox ./manage.py users list | grep "$mail" > /dev/null

    if test $status -eq 0
        echo "account found, switching to super-admin"

        set output (
           app-toolbox ./manage.py users set_superadmin "$mail"
        )
    else
        echo "my account not found, creating a new one"

        set output (
           app-toolbox ./manage.py users create_user "$mail" Exponea \
               --super-admin --no-password --reuse-account
        )
    end

    if test $status -eq 0
        echo "done"
    else
        echo "something failed:"
        echo $output
    end
end

