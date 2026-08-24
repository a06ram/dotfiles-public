function _fzf_change_directory
    fzf | perl -pe 's/([ ()])/\\\\$1/g' | read foo
    if [ $foo ]
        builtin cd $foo
        commandline -r ''
        commandline -f repaint
    else
        commandline ''
    end
end

function fzf_change_directory
    begin
        echo $HOME/.dotfiles
        echo $HOME/.notes
        find $(ghq root) -maxdepth 4 -type d -name .git | sed 's/\/\.git//'
        ls -ad */ | perl -pe "s#^#$PWD/#" | grep -v \.git
        find $HOME/.containers -maxdepth 1 -type d ! -name .git | sed 's/\/\.git//'
        find $HOME/.dev -maxdepth 1 -type d ! -name .git | sed 's/\/\.git//'
    end | sed -e 's/\/$//' | awk '!a[$0]++' | _fzf_change_directory $argv
end
