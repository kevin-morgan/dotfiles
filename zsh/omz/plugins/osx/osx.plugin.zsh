# ---------------------------------------------------------------------
# KEVIN'S OMZ V2015.04.03
# ---------------------------------------------------------------------


# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update="sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; sudo gem update"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Disable/Enable Spotlight
alias spotoff="sudo mdutil -a -i off"
alias spoton="sudo mdutil -a -i on"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

alias tia="echo test"
alias tib="echo test-b"
