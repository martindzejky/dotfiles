# ZOXIDE
# https://github.com/ajeetdsouza/zoxide

if which zoxide > /dev/null
    # initialize zoxide
    zoxide init fish | source

    # migrate .z database if present
    if test -e ~/.z
        echo "migrating z database to zoxide"
        zoxide migrate --merge ~/.z
        rm -r ~/.z
    end
end

