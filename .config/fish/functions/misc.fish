function pacro
    paclo
    sudo pacman -Rns (pacman -Qtdq)
end

function new_folder_from_template
    mkdir -p $argv[2]
    cp -RT $HOME/Templates/$argv[1] $argv[2]
end

function open_with_fzf
    cd $HOME
    fd -t f -H -I | fzf -m --preview="xdg-mime query default {}" | xargs -ro -d "\n" xdg-open 2>&-
    cd $dirprev[-1]
end

function cd_with_fzf
    cd $HOME
    cd (fd -t d -H | fzf --preview="tree -L 1 {}" --bind="space:toggle-preview" --preview-window=:hidden)
end

function pacs
    sudo pacman -Syy (pacman -Ssq | fzf -m --preview="pacman -Si {}" --preview-window=:hidden --bind=space:toggle-preview)
end

function notes
    nvim -c "Notes $args"
end

function rm_swap
  cd /home/lynx/.config/nvim/swap
  set -l swap_fn (fd -t f -H | fzf --preview="tree -L 1 {}" --bind="space:toggle-preview" --preview-window=:hidden)

  if test -n "$swap_fn"
    rm $swap_fn
    echo "$swap_fn deleted successfully"
  else
    echo "No file selected"
  end
  cd $dirprev[-1]
end
