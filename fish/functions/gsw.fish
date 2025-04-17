function gsw \
  -w "git switch" \
  -d "Switch git branches"

  # parse argv
  argparse "r/remote" -- $argv
  or return

  # special case
  if test "$argv" = "-"
    git switch -
    return
  end

  if count $_flag_remote > /dev/null
    set selected (fzf-branches --remote $argv)
  else
    set selected (fzf-branches $argv)
  end

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

