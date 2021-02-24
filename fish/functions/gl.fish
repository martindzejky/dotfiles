function gl \
   -w "git log" \
   -d "Show a nice git log"

    git log \
        --graph \
        --abbrev-commit \
        --decorate \
        --all \
        --format=format:"%C(bold blue)%h%C(reset) %C(dim)%an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %s" \
        $argv
end

