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
    set -l max_depth 4

    set -l exclude_dirs \
        .git \
        node_modules \
        target \
        .venv \
        __pycache__ \
        .pytest_cache \
        .mypy_cache \
        .ruff_cache \
        dist \
        build

    begin
        find $(ghq root) -maxdepth 4 -type d -name .git | sed 's/\/\.git//'

        for dir in $recursive_dirs
            echo $dir
            set -l prune_expr

            for exclude in $exclude_dirs
                if test (count $prune_expr) -gt 0
                    set -a prune_expr -o
                end

                set -a prune_expr -name $exclude
            end

            find $dir \
                -mindepth 1 \
                -maxdepth $max_depth \
                -type d \
                \( $prune_expr \) -prune -o \
                -type d -print
        end

    end | sed -e 's/\/$//' | awk '!a[$0]++' | _fzf_change_directory $argv
end
