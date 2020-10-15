function kc
    if count $argv > /dev/null
        set ctx (kubectl config get-contexts -o name | fzf --exact --select-1 --exit-0 --query="$argv")
    else
        set ctx (kubectl config get-contexts -o name | fzf)
    end

    if test -n "$ctx"
        kubectl config use-context $ctx
    else
        echo "no context found"
    end
end
 
