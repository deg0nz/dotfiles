# Add stuff to $PATH
set PATH $HOME/.cargo/bin $HOME/.local/bin $PATH

# Init Starfish Theme
starship init fish | source

# Aliases
alias sshpw='ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no'
alias scppw='scp -o PreferredAuthentications=password -o PubkeyAuthentication=no'
alias nzbmonkey='python3 /Users/deg0nz/Configs_Server_Scripts/nzb-monkey/src/nzbmonkey.py'
alias removegatekeeper='sudo xattr -rd com.apple.quarantine'
alias flacToMp3='find . -name "*.flac" -exec ffmpeg -i {} -ab 320k -map_metadata 0 -id3v2_version 3 {}.mp3 \;'

alias soundcloud-dl-mp3='youtube-dl -v --audio-format mp3 --audio-quality 0 --embed-thumbnail --add-metadata'

alias ls='exa'
alias nslookup6='nslookup -query=AAAA'
alias netmons 'printf " tcptrack - live traffic monitor per IP (interface needed)\n iftop - live traffic monitor per IP (sudo needed)\n bmon - live traffic monitor\n vnstat - network statistics monitor\n"'
alias logs 'sudo journalctl -fu'

# Set Starship config variable
set -Ux STARSHIP_CONFIG ~/.config/starship.toml

# Colorize manpages with bat
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Set PATH
set -gx PATH $HOME/.cargo/bin $PATH

# Use Apple Silicon Homebrew
eval (/opt/homebrew/bin/brew shellenv)

# init starship theme
starship init fish | source

if string match -q 'screen*' -- $TERM
    powerline-config tmux setup
  end