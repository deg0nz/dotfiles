# Add stuff to $PATH
set PATH $HOME/.cargo/bin $HOME/.local/bin $PATH

# Init Starfish Theme
starship init fish | source

# Aliases
alias sshpw='ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no'
alias scppw='scp -o PreferredAuthentications=password -o PubkeyAuthentication=no'

alias flacToMp3='find . -name "*.flac" -exec ffmpeg -i {} -ab 320k -map_metadata 0 -id3v2_version 3 {}.mp3 \;'
alias soundcloud-dl-mp3='youtube-dl -v --audio-format mp3 --audio-quality 0 --embed-thumbnail --add-metadata'

alias ls='exa'
alias cat='bat'
alias nslookup6='nslookup -query=AAAA'

# Set Starship config variable
set -Ux STARSHIP_CONFIG ~/.config/starship.toml

# Colorize manpages with bat
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Set PATH
set -gx PATH $HOME/.cargo/bin $PATH

# init starship theme
starship init fish | source

if string match -q 'screen*' -- $TERM
    powerline-config tmux setup
  end