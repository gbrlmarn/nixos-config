''
  # https://old.reddit.com/r/tmux/comments/mesrci/tmux_2_doesnt_seem_to_use_256_colors/
  set -g default-terminal "xterm-256color"
  set -ga terminal-overrides ",*256col*:Tc"
  set -ga terminal-overrides '*:Ss=\E[%p1%d q:Se=\E[ q'
  set-environment -g COLORTERM "truecolor"

  # Mouse works as expected
  set-option -g mouse on
  # easy-to-remember split pane commands
  bind | split-window -h -c "#{pane_current_path}"
  bind - split-window -v -c "#{pane_current_path}"
  bind c new-window -c "#{pane_current_path}"

  # Remap prefix
  unbind C-b
  set-option -g prefix C-a
  bind-key C-a send-prefix

  set-window-option -g mode-keys vi
  bind -T copy-mode-vi v send-keys -X begin-selection
  bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'
  
  # left bar
  set-option -g status-style bg=default
  set -g status-position bottom
  set -g status-right '%H:%M:%S %d/%m/%Y'
  set -g status-right-length 50
  set -g status-left-length 20
''
