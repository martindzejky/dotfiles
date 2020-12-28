function gc \
    -d "Utility function to select Google Cloud configuration"
    set configurations (gcloud config configurations list | tail +2 | cut -f 1 -d ' ')

    if count $argv > /dev/null
        set selected (
            for c in $configurations; echo $c; end \
            | fzf --select-1 --exit-0 --query="$argv"
        )
    else
        set selected (
            for c in $configurations; echo $c; end \
            | fzf
        )
    end

    if test -n "$selected"
        gcloud config configurations activate $selected
    else
        echo "no configuration found"
    end
end

