export HISTFILE=~/.zhistory
export HISTSIZE=1000000 # number of lines stored in memory
export SAVEHIST=1000000 # number of lines stored on disk
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS # Remove unnecessary blank lines
setopt EXTENDED_HISTORY

# Prompt. Using single quotes around the PROMPT is very important, otherwise
# the git branch will always be empty. Using single quotes delays the
# evaluation of the prompt. Also PROMPT is an alias to PS1.
# Copied from the following:
# - https://github.com/nickjj/dotfiles/blob/master/.config/zsh/.zshrc#L10
# - https://www.youtube.com/watch?v=-gYtV9z7hhw&t=268s&ab_channel=NickJanetakis
git_prompt() {
    local branch="$(git symbolic-ref HEAD 2> /dev/null | cut -d'/' -f3)"
    local branch_truncated="${branch:0:30}"
    if (( ${#branch} > ${#branch_truncated} )); then
        branch="${branch_truncated}..."
    fi

    [ -n "${branch}" ] && echo " (${branch})"
}

setopt PROMPT_SUBST
export PROMPT='%F{46}%n@%m%f %F{21}%~%f%{$fg[yellow]%}$(git_prompt)%{$reset_color%} $ '
export GREP_OPTIONS='--color=always'


alias cp='cp -v'
alias grep='grep -n'
alias history='history -f'
alias ls='ls -F -G'
alias mv='mv -v'
alias rm='rm -v'
alias vim='nvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pyenv shell configuration
# - suggested from pyenv README https://github.com/pyenv/pyenv#set-up-your-shell-environment-for-pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

