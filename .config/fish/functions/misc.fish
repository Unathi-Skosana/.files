function pacro
    paclo
    sudo pacman -Rns (pacman -Qtdq)
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
    set dir "(fasd -Rdl "$1" | fzf -1 -0 --no-sort +m)"
    cd "$dir" || return 1
end

function cf
  set -l file
  set file (locate -Ai -0 $argv | grep -z -vE '~$' | fzf --read0 -0 -1)

  if test -n $file
     if test -d $file
        cd -- $file
     else
        cd -- (dirname $file)
    end
  end
end

# fkill - kill processes - list only the ones you can kill. Modified the earlier script.
function fkill
    set -l pid 
    if test "$UID" = "0"
        set pid (ps -f -u $UID | sed 1d | fzf -m | awk '{print $2}')
    else
        set pid (ps -ef | sed 1d | fzf -m | awk '{print $2}')
    end

    if test -n "$1"
        set killarg "$1"
    else
        set killarg "9"
    end

    if test "x$pid" != "x"
        echo $pid | xargs kill -$killarg
    end
end

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
function fo
  set -l files (fzf-tmux --query="$1" --multi --select-1 --exit-0)
  if test -n "$files"
      xdg-open "$files"
  end
end

#p function fman
#     man -k . | fzf -q "$1" --prompt='man> '  --preview $'echo {} | tr -d \'()\' | awk \'{printf "%s ", "$2"} {print "$1"}\' | xargs -r man | col -bx | bat -l man -p --color always' | tr -d '()' | awk '{printf "%s ", "$2"} {print "$1"}' | xargs -r man
# end
#
# Get the colors in the opened man page itself
#export MANPAGER="sh -c 'col -bx | bat -l man -p --paging always'"
