export TERM=xterm-256color
export EDITOR='nvim'

eval "$(/opt/homebrew/bin/brew shellenv)"

export GOPATH=$HOME/go
export GOROOT=$(brew --prefix golang)/libexec
export PATH=$GOPATH/bin:$PATH
export PATH=$GOROOT/bin:$PATH

export JAVA_HOME=$(brew --prefix openjdk)
export PATH=$JAVA_HOME/bin:$PATH
