function pacro
    paclo
    sudo pacman -Rns (pacman -Qtdq)
end

function rga-fzf
	set -l RG_PREFIX "rga --files-with-matches"
	set -l file (
		FZF_DEFAULT_COMMAND="$RG_PREFIX '$1'" \
			fzf --sort --preview="rga --pretty --context 5 {q} {}" \
				--phony -q "$1" \
				--bind "change:reload:$RG_PREFIX {q}" \
				--preview-window="70%:wrap"
	)
	file && echo "opening $file" && xdg-open "$file"
end

function new_folder_from_template
    mkdir -p $argv[2]
    cp -RT $HOME/templates/$argv[1] $argv[2]
end

function rm_swap
  cd /home/lynx/.config/nvim/swap
  set -l swap_fn (fd -t f -H | fzf -m --preview="tree -L 1 {}" --bind="space:toggle-preview" --preview-window=:hidden)

  if test -n "$swap_fn"
    rm $swap_fn
    echo "$swap_fn deleted successfully"
  else
    echo "No file selected"
  end
  cd $dirprev[-1]
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

function p
    set -l open "xdg-open" # this will open pdf file withthe default PDF viewer on KDE, xfce, LXDE and perhaps on other desktops.

    ag -U -g ".pdf\$" \
    | fast-p \
    | fzf --read0 --reverse -e -d '\t'  \
        --preview-window down:80% --preview '
            set v -l (echo {q} | tr " " "|"); 
            echo -e {1}"\n"{2} | grep -E "^|$v" -i --color=always;
        ' \
    | cut -z -f 1 | tr -d '\n' | xargs -r --null $open > /dev/null 2> /dev/null
end


# fasd & fzf change directory - jump using `fasd` if given argument, filter output of `fasd` using `fzf` else
function z
    if test (count $argv) -gt 0
        fasd cd -d -i "$argv" && return
    end

    set -l dir
    set dir "(fasd -Rdl "$1" | fzf -1 -0 --no-sort +m)" && cd "$dir" || return 1
end
