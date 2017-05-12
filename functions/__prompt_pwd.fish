function __prompt_pwd
  echo $PWD | sed -e "s|^$GHQ_ROOT\/github\.com|gh|" | sed -e "s|^$GHQ_ROOT\/bitbucket\.org|bb|" | sed -e "s|^$HOME|~|"
end
