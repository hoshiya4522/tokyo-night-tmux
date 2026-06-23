#!/usr/bin/env bash

# Pallet
blue0="#32344a"
blue1="#394b70"
blue2="#7aa2f7"
blue3="#c0caf5"

# Specific
statusBg="${blue0}"

selectionBg="${blue1}"
selectionFg="${blue3}"

messageBg="${blue0}"
messageFg="${blue3}"


leftBg="${blue2}"
leftFg="${blue0}"

activeWinBg="${blue2}"
activeWinFg="${blue0}"

inactiveWinBg="${blue0}"
inactiveWinFg="${blue3}"

rightBg="${blue2}"
rightFg="${blue0}"


# ----- Messages & Modes -----
tmux set-option -g mode-style "bg=${selectionBg}, fg=${selectionFg}"
tmux set-option -g message-style "bg=${messageBg}, fg=${messageFg}"

# ----- Center -----
tmux set-option -g status-justify centre
tmux set-option -g status-style "bg=${statusBg}"

# ----- Active Window -----
tmux set-window-option -g window-status-current-style "bg=${activeWinBg},fg=${activeWinFg}"
tmux set-window-option -g window-status-current-format "#[bold]#[fg=${activeWinBg}, bg=${statusBg}]#[fg=${activeWinFg}, bg=${activeWinBg}]#I:#W#[fg=${activeWinBg}, bg=${statusBg}]"

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
