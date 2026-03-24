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
set -Ux JAVA_HOME /usr/lib/jvm/java-25-openjdk
set -Ux MAVEN_HOME /opt/maven/

# Fzf
set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
set fzf_directory_opts --bind "ctrl-o:execute($EDITOR {} &> /dev/tty)"
set -g FZF_LEGACY_KEYBINDINGS 0

fish_add_path ~/.local/bin
fish_add_path ~/.node_modules/bin
fish_add_path $JAVA_HOME/bin $PATH
fish_add_path $MAVEN_HOME/bin $PATH
fish_add_path ~/.pyenv/bin
pyenv init - | source
