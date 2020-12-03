function gsw \
    -w "git switch" \
    -d "Switch git branches"

    # special case
    if test "$argv" = "-"
        git switch -
        return
    end

    set selected (fzf-branches $argv)

    switch $status
        case 1
            # not found
            echo "no branch found"
            return

        case 130
            # fzf cancelled
            return
    end

    # ensure that only one branch was selected
    if test (count $selected) -gt 1
        echo "select only one branch"
        return 1
    end

    # if a remote branch has been selected, check out its local equivalent
    if string match --regex --quiet '^origin/' $selected
        set selected (string split --max 1 "/" $selected)
        set selected $selected[2]
    end

    git switch $selected
end

