function gd \
    -w "git diff" \
    -d "A better git diff"

    # first get the list of modified files
    set files (
        git diff --name-only --color $argv
    )

    # iterate all files
    for f in $files; echo $f; end |

    # and display them in fzf
    fzf \
        --header (count $files)" files in the diff, open a file diff using enter, exit using esc" \
        --bind "enter:execute:git diff --color $argv -- {} | less -R"
end

