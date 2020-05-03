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

function _gen_fzf_default_opts
  set -l color00  '#2b303b'
  set -l color01  '#343d46'
  set -l color02  '#4f5b66'
  set -l color03  '#65737e'
  set -l color04  '#a7adba'
  set -l color05  '#c0c5ce'
  set -l color06  '#dfe1e8'
  set -l color07  '#eff1f5'
  set -l color08  '#bf616a'
  set -l color09  '#d08770'
  set -l color0A  '#ebcb8b'
  set -l color0B  '#a3be8c'
  set -l color0C  '#96b5b4'
  set -l color0D  '#8fa1b3'
  set -l color0E  '#b48ead'
  set -l color0F  '#ab7967'

  set -gx FZF_DEFAULT_OPTS "
    --color=bg+:$color00,bg:$color00,spinner:$color0C,hl:$color0D
    --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C
    --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D
  "
end
