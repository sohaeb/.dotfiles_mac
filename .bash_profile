
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

######################################

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

######################################

mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview

alias osmc="ssh osmc"
alias ls='ls -calGFh '
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

######################################

# official git bash prompt and completion

if [ -f ~/.git-prompt.sh ]; then
 # source ~/.git-prompt.sh
  source ~/.git-completion.sh
  #export PS1=' \[\033[38;5;214m\]\w\[\e[0m\] @ \[\033[96m\]\u\[\e[0m\] \n└─▶ $\[\033[32m\]$(__git_ps1 "(%s)") \[\e[0m\]\[\033[38;5;226m\]'
  #export PS2="       └─▶ $ "
  # \[\e[0m\] --> Reseting colors
fi

######################################

# https://github.com/magicmonty/bash-git-prompt

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share

  #export PS1='\[\033[96m\]\u\[\e[0m\] @ [\t] \[\e[0m\]'
  #GIT_PROMPT_START=$PS1
  #GIT_PROMPT_END="\n $\[\033[38;5;226m\] "
  
source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

######################################

