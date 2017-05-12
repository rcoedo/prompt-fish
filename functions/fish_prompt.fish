function fish_prompt
  set -l last_status $status

  echo -ne (tput el)
  echo -n (set_color --bold yellow)(__user_host) (set color normal)
  echo -n ' '(set_color green)(__prompt_pwd)(set_color normal)

  if test $last_status -ne 0
    set_color red
    printf ' [%d]' $last_status
    set_color normal
  end

  __fish_git_prompt " "

  set_color white
  if [ $TMUX ]
    printf '\n> '
  else
    printf '\n~ '
  end
  set_color normal
end
