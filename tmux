set-option -g prefix C-a
bind-key C-a send-prefix

set -g mouse on
# navigate windows
unbind-key l
bind-key h select-window -t :-
bind-key C-h select-window -t :-
bind-key -n C-h select-window -t :-
bind-key l select-window -t :+
bind-key C-l select-window -t :+
bind-key -n C-l select-window -t :+

# navigate panes
bind-key j select-pane -t :.-
bind-key C-j select-pane -t :.-
# bind-key -n C-j select-pane -t :.-
bind-key k select-pane -t :.+
bind-key C-k select-pane -t :.+
# bind-key -n C-k select-pane -t :.+
# tell tmux to use 256 colour terminal
set -g default-terminal "xterm-256color"

# vi-style controls for copy mode
setw -g mode-keys vi
# bind-key [ copy-mode \; set mouse off
bind-key v copy-mode \; set mouse off
# bind-key -n C-v copy-mode \; set mouse off
# bind-key C-v copy-mode \; set mouse off

# select and copy like vi in vi-mode
bind-key -T copy-mode-vi v send -X begin-selection
bind-key -T copy-mode-vi y send -X copy-selection
# if encounter incompatible with send-keys/send -X, use lagacy setting:
# bind-key -t vi-copy 'v' begin-selection
# bind-key -t vi-copy 'y' copy-selection

# pasting
# bind-key ] paste-buffer
bind-key p paste-buffer
# bind-key -n C-p paste-buffer
# bind-key C-p paste-buffer

unbind r
bind r source-file ~/.tmux.conf

bind -r m resize-pane -Z
#
# bind -r j resize-pane -D 5
# bind -r k resize-pane -U 5
# bind -r l resize-pane -R 5
# bind -r h resize-pane -L 5
#
#### COLOUR (Solarized dark)
#
# # default statusbar colors
# set-option -g status-style fg=yellow,bg=black #yellow and base02
#
# # default window title colors
# set-window-option -g window-status-style fg=brightblue,bg=default #base0 and default
# #set-window-option -g window-status-style dim
#
# # active window title colors
# set-window-option -g window-status-current-style fg=brightred,bg=default #orange and default
# #set-window-option -g window-status-current-style bright
#
# # pane border
# set-option -g pane-border-style fg=black #base02
# set-option -g pane-active-border-style fg=brightgreen #base01
#
# # message text
# set-option -g message-style fg=brightred,bg=black #orange and base01
#
# # pane number display
# set-option -g display-panes-active-colour blue #blue
# set-option -g display-panes-colour brightred #orange
#
# # clock
# set-window-option -g clock-mode-colour green #green
#
# # bell
# set-window-option -g window-status-bell-style fg=black,bg=red #base02, red

#### COLOUR (Solarized 256)

# default statusbar colors
set-option -g status-style fg=colour136,bg=colour235 #yellow and base02

# default window title colors
set-window-option -g window-status-style fg=colour244,bg=default #base0 and default
#set-window-option -g window-status-style dim

# active window title colors
set-window-option -g window-status-current-style fg=colour166,bg=default #orange and default
#set-window-option -g window-status-current-style bright

# pane border
set-option -g pane-border-style fg=colour235 #base02
set-option -g pane-active-border-style fg=colour240 #base01

# message text
set-option -g message-style fg=colour166,bg=colour235 #orange and base02

# pane number display
set-option -g display-panes-active-colour colour33 #blue
set-option -g display-panes-colour colour166 #orange

# clock
set-window-option -g clock-mode-colour colour64 #green

# bell
set-window-option -g window-status-bell-style fg=colour235,bg=colour160 #base02, red
# #### COLOUR (Solarized light)
#
# # default statusbar colors
# set-option -g status-style fg=yellow,bg=white #yellow and base2
#
# # default window title colors
# set-window-option -g window-status-style fg=brightyellow,bg=default #base0 and default
# #set-window-option -g window-status-style dim
#
# # active window title colors
# set-window-option -g window-status-current-style fg=brightred,bg=default #orange and default
# #set-window-option -g window-status-current-style bright
#
# # pane border
# set-option -g pane-border-style fg=white #base2
# set-option -g pane-active-border-style fg=brightcyan #base1
#
# # message text
# set-option -g message-style fg=brightred,bg=white #orange and base2
#
# # pane number display
# set-option -g display-panes-active-colour blue #blue
# set-option -g display-panes-colour brightred #orange
#
# # clock
# set-window-option -g clock-mode-colour green #green
#
# # bell
# set-window-option -g window-status-bell-style fg=white,bg=red #base2, red

bind-key -r M-h swap-window -t :- \; select-window -t :-
bind-key -r M-j swap-pane -D
bind-key -r M-k swap-pane -U
bind-key -r M-l swap-window -t :+ \; select-window -t :+

