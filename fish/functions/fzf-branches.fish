function fzf-branches \
  -w "git branch" \
  -d "Select a git branch using fzf"

  # parse argv
  argparse "h/help" "r/remote" -- $argv
  or return

  # display help if requested
  if count $_flag_help > /dev/null
    echo "usage: fzf-branches [--remote] [<query>]"
    echo
    echo "Select a git branch using fzf. If --remote is set,"
    echo "also search in remote branches."

    return
  end

  if count $_flag_remote > /dev/null
    set refs refs/heads refs/remotes
  else
    set refs refs/heads
  end

  set branches (git for-each-ref $refs --sort=-committerdate --color=always --format='%(refname:short) %(color:green)%(committerdate:relative) %(color:blue)%(subject) %(color:magenta)%(authorname)%(color:reset)')

  # if there are no branches, return nothing
  if not count $branches > /dev/null
    return 1
  end

  # if arguments are passed to the function,
  # pass them to fzf as a query
  if count $argv > /dev/null
    set selected (
      for b in $branches; echo $b; end \
      | fzf --multi --ansi --select-1 --exit-0 --query="$argv"
    )
  else
    set selected (
      for b in $branches; echo $b; end \
      | fzf --multi --ansi
    )
  end

  if test $status -eq 130
    # fzf cancelled
    return 130
  end

  if not count $selected > /dev/null
    # nothing selected
    return
  end

  for s in $selected
    # return just the branch name
    echo $s | cut -d " " -f 1
  end
end
