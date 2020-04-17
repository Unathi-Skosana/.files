function pacro
    paclo
    sudo pacman -Rns (pacman -Qtdq)
end

function new_folder_from_template
    mkdir -p $argv[2]
    cp -RT $HOME/Templates/$argv[1] $argv[2]
end

function open_with_fzf
    fd -t f -H -I | fzf -m --preview="xdg-mime query default {}" | xargs -ro -d "\n" xdg-open 2>&-
end

function cd_with_fzf
    cd $HOME
    cd (fd -t f -H d | fzf --preview="tree -L 1 {}" --bind="space:toggle-preview" --preview-window=:hidden)
end

function pacs
    sudo pacman -Syy (pacman -Ssq | fzf -m --preview="pacman -Si {}" --preview-window=:hidden --bind=space:toggle-preview)
end