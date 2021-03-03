function gshow \
    -w "git show" \
    -d "Show a git commit listing only file names"

    git show --name-only $argv
end

