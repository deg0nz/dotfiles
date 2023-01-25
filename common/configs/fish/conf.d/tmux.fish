# Automatically attach or start tmux session if this is a remote session
if begin
not set -q TMUX
and set -q SSH_CONNECTION
end
  set WHOAMI (whoami)
  if tmux has-session -t $WHOAMI
    tmux -2 attach-session -t $WHOAMI
  else
    tmux -2 new-session -s $WHOAMI
  end
end