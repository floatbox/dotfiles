export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTCONTROL=ignoredups
export HISTSIZE=100000
export HISTIGNORE="ls:history:gh"

export GIT_MERGE_AUTOEDIT=no

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

shopt -s histappend
PROMPT_COMMAND='history -a'

export EDITOR='subl -w'
export DEVELOPER=floatbox

alias gh='history | grep'
alias pg='sudo -u postgres psql postgres'

export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="/usr/local/bin:$PATH"

export PS1="\u@\h \w\[\033[32m\]\$(__git_ps1)\[\033[00m\] $ "


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
