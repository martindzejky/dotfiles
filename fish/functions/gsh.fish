function gsh \
    -w "git show" \
    -d "Show a git commit listing only file names"

    git show --color --name-only $argv
end

