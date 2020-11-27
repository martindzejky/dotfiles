function gsw \
    -w "git switch" \
    -d "Switch git branches"

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

    git switch $selected
end

