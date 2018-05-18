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

# function to add, commit and push to github all in one.
function gpall() {
    if [[ -n "$1" ]]; then
        git add -A && git commit -m "$1" && git push
    else
        echo "Error: Please run with a commit message eg. $0 my-message-here"
    fi
}

# Ubuntu only
#alias open=xdg-open

# Mac only. Install gls and uncomment (brew install coreutils)
#alias ls='gls --color --group-directories-first'
