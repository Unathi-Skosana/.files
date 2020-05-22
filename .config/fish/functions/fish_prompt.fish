#   Based on Pista
# - Virtualenv name (if applicable, see https://github.com/adambrenecki/virtualfish)
# - Shorten current directory name
# - Git information (if inside a git repo)
# - Number of tasks from t.py (if non-zero)

# Shorten PWD
set -g fish_prompt_pwd_dir_length 1

# Git prompt
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_hide_untrackedfiles 1
set -g __fish_git_prompt_hide_dirtystate 1
set -g __fish_git_prompt_hide_stagedstate 1
set -g __fish_git_prompt_showupstream none
set -g __fish_git_prompt_color_dirtystate --bold brred
set -g __fish_git_prompt_color_cleanstate --bold green
set -g __fish_git_prompt_color_stagedstate --bold yellow
set -g __fish_git_prompt_color_upstream --bold cyan
set -g __fish_git_prompt_color_branch --bold brblack

# Git Characters
set -g __fish_git_prompt_char_untrackedfiles ''
set -g __fish_git_prompt_char_stateseparator ''
set -g __fish_git_prompt_char_cleanstate ' · '
set -g __fish_git_prompt_char_dirtystate ' × '
set -g __fish_git_prompt_char_stagedstate ' ± '
set -g __fish_git_prompt_char_upstream_prefix ''
set -g __fish_git_prompt_char_upstream_equal ' '
set -g __fish_git_prompt_char_upstream_ahead ' ↑'
set -g __fish_git_prompt_char_upstream_behind ' ↓'
set -g __fish_git_prompt_char_upstream_diverged ' ↑↓ '


# disable venv default prompt
set -g VIRTUAL_ENV_DISABLE_PROMPT 0

# disable vim mode prompt
function fish_mode_prompt --description 'Displays the current mode'
  # Do nothing if not in vi mode
end

function _print_in_color
  set -l string $argv[1]
  set -l color  $argv[2]

  set_color $color
  printf $string
  set_color normal
end

function _prompt_color_for_status
  if test $argv[1] -eq 0
    echo brgreen
  else
    echo brred
  end
end

function _prompt_char_for_status
  if test $argv[1] -eq 0
    _print_in_color "\n\e[1m\$\e[0m " brgreen
  else
    _print_in_color "\n\e[1m#\e[0m " brred
  end
end


if functions -q fish_right_prompt
    if not functions -q __fish_right_prompt_orig
        functions -c fish_right_prompt __fish_right_prompt_orig
    end
    functions -e fish_right_prompt
else
    function __fish_right_prompt_orig
    end
end


function fish_right_prompt
  if set -q VIRTUAL_ENV
    set -l venv (basename $VIRTUAL_ENV)
    _print_in_color "\e[1m$venv\e[0m" cyan
  end
end

if functions -q fish_prompt
    if not functions -q __fish_prompt_orig
        functions -c fish_prompt __fish_prompt_orig
    end
    functions -e fish_prompt
else
    function __fish_prompt_orig
    end
end


function fish_prompt
  # last status
  set -l last_status $status

  # tasks count from t.py, NB: m and s are aliased commands to call t.py for
  # two separate task lists
  set -l  __tasks_symbol 'τ'
  set -l  __tasks (math (m | wc -l | sed -e"s/ *//") + (s | wc -l | sed -e"s/ *//"))

  # Directory
  _print_in_color "\n"(prompt_pwd) brwhite

  # Tasks
  if [ $__tasks != 0 ]
    _print_in_color " $__tasks_symbol $__tasks" green
  end

  # Git
  __fish_git_prompt " %s"

  # Prompt char
  _prompt_char_for_status $last_status
  __fish_prompt_orig
end
