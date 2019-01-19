# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/nicola/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"


# Powerlevel9k left prompt config

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)

POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='238'
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_VCS_HIDE_TAGS='true'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='214'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='236'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='196'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='236'


# Powerlevel9k right prompt config

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv root_indicator time)

POWERLEVEL9K_STATUS_CROSS='true'
POWERLEVEL9K_VIRTUALENV_BACKGROUND='white'
POWERLEVEL9K_VIRTUALENV_FOREGROUND='238'
POWERLEVEL9K_TIME_BACKGROUND='blue'
POWERLEVEL9K_TIME_FOREGROUND='white'
POWERLEVEL9K_TIME_ICON=''


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git yarn osx thefuck
)


# Disable plugin verification for superuser
# It had conflicts in permissions because
# those are loaded from my user home
[[ ${(%):-%#} = \# ]] && ZSH_DISABLE_COMPFIX=true


# Loads oh-my-zsh
source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:/usr/local/share/man:$MANPATH"

# You may need to manually set your language environment
export LANG=it_IT.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ls='gls --color'
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'
alias cd..="cd .."
alias lll='ll'
alias gti="git"
alias vi="vim"
alias grep="grep --color"
alias fucking=sudo
alias fuckin=sudo
alias su='sudo --shell /bin/zsh'
alias s="~/.bash/status.sh"
alias updatesrc="~/.bash/updateSrc.sh"
alias ..="cd .."
alias coka="ssh coka -t 'cd homeraid/zambello; source .bashrc; bash -l'"
alias g="gatsby"
alias fetch="git fetch && git pull"
alias yolo='git commit -m "$(curl -s https://whatthecommit.com/index.txt)"'

eval "$(thefuck --alias)"

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
