if [[ $(uname -s) = "Darwin" ]];
then
    source ~/.bash/bashrc_macos
fi

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
alias s="~/.bash/status.sh"
alias updatesrc="~/.bash/updateSrc.sh"
alias ..="cd .."
alias coka="ssh coka -t 'cd homeraid/zambello; source .bashrc; bash -l'"
alias g="gatsby"

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export TERM="xterm-color"
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Git autocomplete
test -f ~/.git-completion.bash && . $_

# SSH autocomplete
complete -o default -o nospace -W "$(grep -i -e '^host ' ~/.ssh/config | awk '{print substr($0, index($0,$2))}' ORS=' ')" ssh scp sftp

eval "$(thefuck --alias)"

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

alias cdr='. /Users/nicola/.bash/cdr/cdr.sh'
alias arp_scan='. /Users/nicola/.bash/arp_scan.sh'

a ()
{
    ag --depth 9999 "$@"
}
