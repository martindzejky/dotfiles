function gbd \
    -w "git branch" \
    -d "Delete git branches"

    set branches (git for-each-ref --format='%(refname:short)' 'refs/heads/*')

    # TODO: refactor!
    if count $argv > /dev/null
        set selected (
            for b in $branches; echo $b; end \
            | fzf --select-1 --exit-0 --query="$argv"
        )
    else
        set selected (
            for b in $branches; echo $b; end \
            | fzf --multi
        )
    end

    if test $status -eq 130
        # fzf cancelled
        return
    end

    if not count $selected > /dev/null
        echo "no branch found"
        return
    end

    # try to delete each branch separately and if
    # necessary, ask to use the force
    for branch in $selected
        if git branch --delete $branch
            continue
        end

        echo "do you want to use the force?"
        read --prompt-str="[yN] " answer

        if test \( -n $answer \) -a \( $answer = "y" \)
            git branch --delete --force $branch
        end
    end
end

