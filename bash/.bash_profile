if [[ $(uname -s) = "Darwin" ]];
then
    source ~/.bashrc
fi
source "$HOME/.cargo/env"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
