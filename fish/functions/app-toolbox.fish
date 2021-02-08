function app-toolbox \
   -d "Shortcut into the app-toolbox pod"

    if count $argv > /dev/null
        set query $argv
    else
        set query bash
    end

    kubectl exec -it app-toolbox-0 --container app-toolbox \
       -- $query
end

