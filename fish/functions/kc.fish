function kc \
    -w "kubectl config use-context" \
    -d "Allows to select a Kubernetes context and switch to it"

    set selected (kube-contexts $argv)

    switch $status
        case 1
            # not found
            echo "no context found"
            return

        case 130
            # fzf cancelled
            return
    end

    if test -n "$selected"
        kubectl config use-context $selected
    else
        echo "no context found"
    end
end

