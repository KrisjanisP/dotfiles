set fish_greeting                                 # Supresses fish's intro message
set TERM "xterm-256color"                         # Sets the terminal type
function fish_prompt
        echo (pwd) '> '
end

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias ls="exa -lha --git --icons --color=always --group-directories-first"

set -U fish_user_paths $fish_user_paths /home/krisjanisp/.local/share/gem/ruby/3.0.0/bin

function catall
    for file in (/usr/bin/ls)
        if test -f $file
            bat $file
            echo "====== End of $file ======"
        end
    end
end

