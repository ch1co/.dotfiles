neofetch

export ZSH="/home/ch1co/.oh-my-zsh"

ZSH_THEME="agnoster"
eval `dircolors ~/.dir_colors/dircolors`

CASE_SENSITIVE="true"

DISABLE_UPDATE_PROMPT="true"

export UPDATE_ZSH_DAYS=1

ENABLE_CORRECTION="true"


HIST_STAMPS="mm/dd/yyyy"


plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Example aliases
alias zshconfig="vim ~/.dotfiles/zsh/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias cc='clear'
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

alias clean='sudo apt-get autoremove &&
             sudo apt-get -y autoclean &&
             sudo apt-get -y clean'


alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'

## Show open ports
alias ports='sudo netstat -tulanp'
 

source /home/ch1co/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
