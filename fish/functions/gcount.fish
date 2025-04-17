function gcount -d "Count the number of commited lines in a git repository"
  git ls-files | xargs wc -l
end

