function gl \
   -w "git log" \
   -d "Show a nice git log searchable using fzf"

  set selected (

    # display the git log
    git log \
      --graph \
      --color \
      --format=format:"%h%C(auto)%d %C(green)%cr %C(blue)%s %C(magenta)%an %C(reset)" \
      $argv |

    # and allow searching it with fzf
    fzf \
      --ansi \
      --reverse \
      --no-sort \
      --multi \
      --tiebreak=index \
      --header="use ctrl-s to toggle sorting, enter to select a commit, tab to select multiple" \
      --bind=ctrl-s:toggle-sort

  )

  # if anything was selected, print only the commit hashes
  if count $selected > /dev/null
    for s in $selected
      echo $s | ag --only-matching "[a-f0-9]{7}" | head -1
    end
  end
end
