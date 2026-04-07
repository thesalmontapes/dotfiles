export TERM=xterm-256color
export EDITOR='nvim'

eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH=$HOME/.local/bin:$PATH

export GOPATH=$HOME/go
# Hardcoded path instead of slow $(brew --prefix golang) call
export GOROOT=/opt/homebrew/opt/go/libexec
export PATH=$GOPATH/bin:$PATH
export PATH=$GOROOT/bin:$PATH

# Hardcoded path instead of slow $(brew --prefix openjdk) call
export JAVA_HOME=/opt/homebrew/opt/openjdk
export PATH=$JAVA_HOME/bin:$PATH
