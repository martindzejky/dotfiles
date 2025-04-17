function gbd \
  -w "git branch" \
  -d "Delete git branches"

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

  # try to delete each branch separately and if
  # necessary, ask to use the force
  for branch in $selected
    if git branch --delete $branch
      continue
    end

    echo "do you want to use the force?"
    read --prompt-str="[yN] " answer

    if test \( -n $answer \) -a \( $answer = "y" \)
      git branch --delete --force $branch
    end
  end
end

