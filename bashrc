function parse_git_branch {
    git_branch=`git branch 2>/dev/null | grep -e '^*' | sed -E 's/^\* (.+)$/(\1) /'`
        echo $git_branch
}

RED="\[\033[1;31m\]"
GREEN="\[\033[1;32m\]"
YELLOW="\[\033[1;33m\]"
CLR_END="\[\033[0m\]"
export PS1="$GREEN\u$CLR_END@$YELLOW\W$RED\$(parse_git_branch)$CLR_END$ "

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

alias manage='python $VIRTUAL_ENV/../manage.py'
