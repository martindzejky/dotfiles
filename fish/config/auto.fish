# AUTOMATION

# Only run for interactive shells. Previously
# this would mess up some scripts, for example,
# fzf in Vim or the git commit command.
if status is-interactive

    # set up light/dark mode in iTerm
    if is-os-dark-mode
        toggle-dark-mode
    end

end
