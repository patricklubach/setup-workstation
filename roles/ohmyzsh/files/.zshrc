# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:$HOME/.local/bin

# Exports
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.terraform/bin
export PATH=$PATH:$HOME/.bin
export PATH=$PATH:$HOME/go/bin

export GOPATH=$HOME/go

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
export LANG=en_US.UTF-8

# zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

plugins=(
            asdf
            command-not-found
            docker
            docker-compose
            gcloud
            git
            golang
            helm
            kubectl
            minikube
            ssh-agent
            terraform
            thefuck
            vscode
            z
            # git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
            zsh-autosuggestions
            # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
            zsh-syntax-highlighting
)

# Sources / Auto-completions
source $ZSH/oh-my-zsh.sh
#source <(kubectl completion zsh)
#source <(helm completion zsh)

# Aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias myip="curl http://ipecho.net/plain; echo"
alias pip="pip3"
alias python="python3"
#alias gactivate="gcloud config configurations activate"
#alias tflint="docker run --rm -v $(pwd):/data -t ghcr.io/terraform-linters/tflint"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
