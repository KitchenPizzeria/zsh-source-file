if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Terminal Aliases
alias l="ls -alFh"
alias vz="vim ~/.zshrc"
alias hist="cat ~/.zsh_history"

# Jenkins in Docker Commands
alias jk-ssh="docker exec -it --user root 4f2d6d03d073 /bin/bash"
alias jk="docker run -v /var/run/docker.sock:/var/run/docker.sock -dp 8080:8080 -p 50000:50000 -v jenkins_config:/var/jenkins_home 72d5c909f166"
alias jk-webhook="relay forward --bucket jenkins http://localhost:8080/"

# Docker Aliases
alias dp="docker ps"
alias dr="docker run"
alias di="docker images"
alias dc="docker container"
alias dv="docker volume"


# Git Aliases
alias gaa="git add ."
alias ga="git add"
alias gb="git branch"
alias gc="git commit -m"
alias gch="git checkout"
alias gp="git push -u origin"
alias grv="git remote -v"
alias gra="git remote add origin"
alias grs="git remote set-url origin"
