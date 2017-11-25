# Homebrew GitHub API Token to avoid queueing for searches and downloads.
export HOMEBREW_GITHUB_API_TOKEN=f76751918c3405fa57424e08b1d4c48edc7db419

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"

# Avoid ValueError: undefined locale UTF-8
export LANG="it_IT.UTF-8"
export LC_COLLATE="it_IT.UTF-8"
export LC_CTYPE="it_IT.UTF-8"
export LC_MESSAGES="it_IT.UTF-8"
export LC_MONETARY="it_IT.UTF-8"
export LC_NUMERIC="it_IT.UTF-8"
export LC_TIME="it_IT.UTF-8"
export LC_ALL=

# Colored ls output
export CLICOLOR=1

# Use latest vim as default editor
export EDITOR=vim

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# some more aliases
alias ls="gls --color"
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
alias s="/Users/nicola/.bash/status.sh"
alias ..="cd .."

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export TERM="xterm-color"
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Git autocomplete
test -f ~/.git-completion.bash && . $_

# SSH autocomplete
complete -o default -o nospace -W "$(grep -i -e '^host ' ~/.ssh/config | awk '{print substr($0, index($0,$2))}' ORS=' ')" ssh scp sftp

export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi

fuck () {
    TF_HISTORY=$(fc -ln -10)
    TF_CMD=$(
        TF_ALIAS=fuck
        TF_SHELL_ALIASES=$(alias)
        TF_HISTORY=$TF_HISTORY
        PYTHONIOENCODING=utf-8
        thefuck THEFUCK_ARGUMENT_PLACEHOLDER $*
    ) && eval $TF_CMD;
    test -n "$TF_CMD" && print -s $TF_CMD
}

eval "$(thefuck --alias)"

export CC=/usr/local/bin/gcc-4.9
alias gcc=/usr/local/bin/colorgcc

# MacPorts Installer addition on 2017-04-26_at_23:01:02: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export MANPATH="/opt/local/share/man:$MANPATH"

PATH="/usr/local/bin:/opt/local/bin:/opt/local/sbin:/sw/bin:/sw/sbin:/usr/local/mysql/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/nicola/Library/Android/sdk/tools:/Users/nicola/Library/Android/sdk/platform-tools"

set completion-ignore-case On

alias fullrelease="~/.bash/releasing.sh"

# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end

export PATH="/usr/local/opt/sqlite/bin:$PATH"
