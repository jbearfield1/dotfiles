# alias for microsoft edge flatpak app (can't wait to graduate so I can get rid of this godforsaken app)
alias msedge='flatpak run com.microsoft.Edge'  

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# used for saving dotfiles to git
alias dotfiles='/usr/bin/git --git-dir=/home/josh/.cfg/ --work-tree=/home/josh'
