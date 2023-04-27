# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"

if [ "$(uname 2> /dev/null)" != "Linux" ]; then
  # Load brew env
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
if [ "$(uname 2> /dev/null)" != "Linux" ]; then
  export ZSH="/Users/nicola/.oh-my-zsh"
else
  export ZSH="/home/nicola/.oh-my-zsh"
fi

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
# POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel10k/powerlevel10k"


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

TOUCHBAR_GIT_ENABLED=true
YARN_ENABLED=true

# Magic Enter plugin
# This plugin makes your enter key magical, by binding commonly used commands to it.
# To use it, add magic-enter to the plugins array in your zshrc file.
# You can set the commands to be run in your .zshrc, before the line containing plugins.
# If no command is specified in a git directory, git status is executed; in other directories, ls.
# MAGIC_ENTER_GIT_COMMAND='git status -u .'
# MAGIC_ENTER_OTHER_COMMAND='ls -lahF .'

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
if [ "$(uname 2> /dev/null)" != "Linux" ]; then
  plugins=(
    git yarn macos thefuck zsh-iterm-touchbar emoji zsh-syntax-highlighting virtualenv git-auto-fetch
  )
else
  plugins=(
    git yarn thefuck zsh-syntax-highlighting virtualenv git-auto-fetch
  )
fi


# Disable plugin verification for superuser
# It had conflicts in permissions because
# those are loaded from my user home
[[ ${(%):-%#} = \# ]] && ZSH_DISABLE_COMPFIX=true


# Loads oh-my-zsh
source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:/usr/local/share/man:$MANPATH"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'

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

if [ "$(uname 2> /dev/null)" != "Linux" ]; then
  alias ls='gls --color'
else
  alias ls='ls --color'
fi
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'
alias cd..="cd .."
alias lll='ll'
alias vi="nvim"
alias vim="nvim"
alias gti="git"
alias oni="oni2"
alias grep="ggrep --color"
alias fucking=sudo
alias fuckin=sudo
alias su='sudo --shell /bin/zsh'
alias s="~/scripts/status.sh"
alias updatesrc="~/scripts/updateSrc.sh"
alias checkchanges="~/scripts/check_changes.sh"
alias ..="cd .."
alias fetch="git fetch && git pull"
alias yolo='git commit -m "$(curl -s https://whatthecommit.com/index.txt) $(random_emoji)"'
alias up="git fetch && git pull"
alias renv="~/scripts/renv.sh"
alias renv3="~/scripts/renv3.sh"
alias isay="~/scripts/isay.sh"
alias ag="ag --depth=9999"
alias code="codium"

eval "$(thefuck --alias)"

kernelwave() {
  cat /dev/random | hexdump -v -e '/1 "%u\n"' | awk '{ split("0,2,4,5,7,9,11,12",a,","); for (i = 0; i < 1; i+= 0.0001) printf("%08X\n", 100*sin(1382*exp((a[$1 % 8]/12)*log(2))*i)) }' | xxd -r -p | sox -t raw -r 64k -c 1 -e unsigned -b 16 - -d
}

transfer(){ if [ $# -eq 0 ];then echo "No arguments specified.\nUsage:\n  transfer <file|directory>\n  ... | transfer <file_name>">&2;return 1;fi;if tty -s;then file="$1";file_name=$(basename "$file");if [ ! -e "$file" ];then echo "$file: No such file or directory">&2;return 1;fi;if [ -d "$file" ];then file_name="$file_name.zip" ,;(cd "$file"&&zip -r -q - .)|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null,;else cat "$file"|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;else file_name=$1;curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;}

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:$HOME/.local/bin/
export PATH=$PATH:$HOME/Library/Python/2.7/bin
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"


export CFLAGS="-I$(xcrun --show-sdk-path)/usr/include/sasl"

if [ "$(uname 2> /dev/null)" != "Linux" ]; then
  test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
fi

source ~/.github.sh

export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.8/bin:$PATH"
export PATH="/usr/local/share/dotnet:$PATH"
export PATH="$PATH:/Users/nicola/.dotnet/tools:/opt/homebrew/Cellar/onnxruntime"
export GPG_TTY=$(tty)

# export PNPM_HOME="/Users/nicola/Library/pnpm"
# export PATH="$PNPM_HOME:$PATH"
# export VOLTA_HOME="$HOME/.volta"
# export PATH="$VOLTA_HOME/bin:$PATH"

export DOTNET_CLI_TELEMETRY_OPTOUT="1"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
