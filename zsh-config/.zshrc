# If you come from bash you might have to change your $PATH.
PATH=$HOME/bin:/usr/local/bin:$PATH
PATH=$PATH:/usr/local/mysql/bin
export PATH
# Path to your oh-my-zsh installation.
export ZSH=/Users/apolodu/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias mysql_run='mysql -u root -p'
alias django_run='python manage.py runserver 127.0.0.1:8080'

# alias for neovim configuration file
alias nvim_config='nvim ~/.config/nvim/init.vim'

# alias hint for login


alias_hint="You have following alias set-up: 
alias mysql_run='mysql -u root -p'
alias django_run='python manage.py runserver 127.0.0.1:8080'
alias nvim_config='nvim ~/.config/nvim/init.vim'
";
echo $alias_hint 


custom_function_hint="You have following customed function:
tnew => tmux new -s
ta => tmux attach -t
td => tmux detach
tks => tmux kill-session -t
";
echo $custom_function_hint


# change to ustc homebrew mirror
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles



# added by Anaconda2 5.0.1 installer
PATH="/Users/apolodu/anaconda2/bin:$PATH"

# added by Anaconda3 5.0.1 installer
PATH="/Users/apolodu/anaconda3/bin:$PATH"

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PATH="/usr/local/Cellar/mongodb/3.6.2/bin:$PATH"
export PATH
export PATH="/usr/local/sbin:$PATH"

# customized function
## example: 
myfunction(){
    echo "$1"
}
export myfunction

## tmux functions

### tmux new -s
tnew(){
    if [ ! -z "$1" ]
        then
            tmux new -s "$1"
    else
        tmux new
        echo "session name not set, default value will be used."
    fi
}
export tnew

### tmux attach -t
ta(){
    tmux attach -t "$1"
}
export ta

### tmux detach
td(){
    tmux detach
}
export td

### tmux kill-session -t
tks(){
    if [ ! -z "$1" ]
    then
        tmux kill-session -t "$1"
    else
        tmux kill-session
    fi
}
export tks
