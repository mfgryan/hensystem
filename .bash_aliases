alias tor='cd /home/ryan/tools/tor-browser_en-US; ./start-tor-browser.desktop'
alias npm-exec='PATH=$(npm bin):$PATH'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# function to create a bash script and make it executable.
function tchmod() {
    if [[ -n "$1" ]]; then
        echo "#!/bin/bash" >> $1 && chmod 755 $1
    else
        echo "Error: Please run with a file name eg. $0 test.sh"
    fi
}

# Ubuntu only
#alias open=xdg-open

# Mac only. Install gls and uncomment (brew install coreutils)
#alias ls='gls --color --group-directories-first'
