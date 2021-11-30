# bootstrap ssh agent and add my keys
eval (ssh-agent -c) > /dev/null
ssh-add -q
