function gl \
   -w "git log" \
   -d "Show a nice git log"

    git log \
        --graph \
        --abbrev-commit \
        --decorate \
        --all \
        --format=format:"%h%C(auto)%d %C(green)%cr %C(blue)%s %C(magenta)%an %C(reset)" \
        $argv
end

