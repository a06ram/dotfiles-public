# Clear fish shell welcome message
set fish_greeting ""

# Aliases
alias g git
command -qv nvim && alias vim nvim

if type -q eza
    alias ll "eza -l -g --icons"
    alias lla "ll -a"
    alias etree "eza --tree --icons"
end

# Neovim as default editor
set -gx EDITOR nvim

# Fzf
set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
set fzf_directory_opts --bind "ctrl-o:execute($EDITOR {} &> /dev/tty)"
set -g FZF_LEGACY_KEYBINDINGS 0

fish_add_path ~/.local/bin
