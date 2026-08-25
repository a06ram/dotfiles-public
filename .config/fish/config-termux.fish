if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Clear fish shell welcome message
set fish_greeting ''

# Go
set -Ux GOPATH $HOME/go
fish_add_path $GOPATH/bin $PATH

# Fzf change directory
set -g recursive_dirs \
    $HOME/.dev
