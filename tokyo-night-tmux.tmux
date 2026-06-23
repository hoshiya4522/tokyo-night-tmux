#!/usr/bin/env bash

# Pallet
blue0="#32344a"
blue1="#394b70"
blue2="#7aa2f7"
blue4="#89ddff"
blue5="#b4f9f8"
red="#f7768e"
white1="#9699a8"
white2="#c0caf5"


# Specific
statusBg="${blue0}"

selectionBg="${blue1}"
selectionFg="default, reverse"

messageBg="${blue0}"
messageFg="${white2}"

leftBg="${blue2}"
leftFg="${blue0}"

activeWinBg="${blue2}"
activeWinFg="${blue0}"

inactiveWinBg="${blue0}"
inactiveWinFg="${white2}"

rightBg="${blue2}"
rightFg="${blue0}"

paneBorder="${white1}"
paneBorderActive="${blue2}"

clockColor="${blue2}"
clockStyle="12"

paneNumColor="${blue2}"
paneNumActive="${red}"

# ----- Messages & Modes -----
tmux set-option -g mode-style "bg=${selectionBg}, fg=${selectionFg}"
tmux set-option -g message-style "bg=${messageBg}, fg=${messageFg}"

# ----- Center -----
tmux set-option -g status-justify centre
tmux set-option -g status-style "bg=${statusBg}"

# ----- Active Window -----
tmux set-window-option -g window-status-current-style "bg=${activeWinBg},fg=${activeWinFg}"
tmux set-window-option -g window-status-current-format "#[bold]#[fg=${activeWinBg}, bg=${statusBg}]#[fg=${activeWinFg}, bg=${activeWinBg}]#I:#W#[fg=${activeWinBg}, bg=${statusBg}]"
tmux set-window-option -g window-status-current-format "#[bold]#[fg=${activeWinBg}, bg=${statusBg}]#[fg=${activeWinFg}, bg=${activeWinBg}]#I:#W#{?window_zoomed_flag, 󱡴 ,}#[fg=${activeWinBg}, bg=${statusBg}]"

# ----- Inactive Windows -----
tmux set-window-option -g window-status-style "bg=${inactiveWinBg}"
tmux set-window-option -g window-status-format "#[fg=${inactiveWinFg}, bg=${inactiveWinBg}]#[fg=${inactiveWinFg}, bg=${inactiveWinBg}]#I:#W#[fg=${inactiveWinFg}, bg=${inactiveWinBg}]"
tmux set-window-option -g window-status-separator " "

# ----- Left -----
tmux set-option -g status-left-style "bg=${leftBg},fg=${leftFg}"
tmux set-option -g status-left " #S #[fg=${leftBg}, bg=${statusBg}]"

# ----- Right -----
tmux set-option -g status-right-style "bg=${statusBg},fg=${rightBg}"
tmux set-option -g status-right "#[fg=${rightBg}, bg=${statusBg}] #[fg=${rightFg}, bg=${rightBg}] %d/%m  %R "

# ----- Borders -----
tmux set-option -g pane-active-border-style "fg=${paneBorderActive}"
tmux set-option -g pane-border-style "fg=${paneBorder}"

# ----- Clock -----
tmux set-window-option -g clock-mode-colour "${clockColor}"
tmux set-window-option -g clock-mode-style "${clockStyle}"

# ----- Pane Numbers -----
tmux set-option -g display-panes-colour "${paneNumColor}"
tmux set-option -g display-panes-active-colour "${paneNumActive}"
