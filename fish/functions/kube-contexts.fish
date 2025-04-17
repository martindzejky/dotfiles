function kube-contexts \
   -w "kubectl config use-context" \
   -d "Utility function to select a Kubernetes context"

  set contexts (kubectl config get-contexts -o name)

  # if there are no contexts, return nothing
  if not count $contexts > /dev/null
    return 1
  end

  # if arguments are passed to the function,
  # pass them to fzf as a query
  if count $argv > /dev/null
    set selected (
      for c in $contexts; echo $c; end \
      | fzf --select-1 --exit-0 --query="$argv"
    )
  else
    set selected (
      for c in $contexts; echo $c; end \
      | fzf
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

  echo $selected
end

