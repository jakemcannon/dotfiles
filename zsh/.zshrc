# number of lines kept in history
export HISTSIZE=1000000
# number of lines saved in the history after logout
export SAVEHIST=1000000
# location of history
export HISTFILE=~/.zhistory
# append command to history file once executed
setopt inc_append_history
setopt HIST_IGNORE_DUPS
setopt EXTENDED_HISTORY

export GREP_OPTIONS='--color=always'
export PROMPT='%F{46}%n@%m%f %F{21}%~%f $ '

alias cp='cp -v'
alias grep='grep -n'
alias history='history -f'
alias ls='ls -F -G'
alias mv='mv -v'
alias rm='rm -v'
alias vim='nvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
