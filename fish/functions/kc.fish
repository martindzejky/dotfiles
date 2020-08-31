function kc
    set CTX (kubectl config get-contexts -o name | fzf)

    if test -n "$CTX"
        kubectl config use-context $CTX
    end
end
 
