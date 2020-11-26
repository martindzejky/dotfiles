function gsw \
    -w "git switch" \
    -d "Switch git branches"

    set branches (git for-each-ref --format='%(refname:short)' 'refs/heads/*')

    if count $argv > /dev/null
        set branch (echo $branches | fzf --select-1 --exit-0 --query="$argv")
    else
        set branch (echo $branches | fzf)
    end

    if test -n $branch
        git switch $branch
    else
        echo "no branch found"
    end
end

