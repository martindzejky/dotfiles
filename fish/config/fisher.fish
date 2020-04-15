# FISHER CONFIGURATION
# https://github.com/jorgebucaran/fisher

# fisher
set -g fisher_path ~/.config/fisher-packages
set -g fish_function_path $fisher_path/functions $fish_function_path
set -g fish_complete_path $fisher_path/completions $fish_complete_path

for file in $fisher_path/conf.d/*.fish
    builtin source $file 2> /dev/null
end

