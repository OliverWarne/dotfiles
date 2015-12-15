#!/bin/sh

SESSION_NAME=""

cd ~/prog/${SESSION_NAME}

tmux has-session -t ${SESSION_NAME}

if [ $? != 0 ]
then
    # Create new session
    tmux new-session -s ${SESSION_NAME} -n rust -d
    tmux split-window -h
    tmux resize-pane -R 4
    tmux send-keys -t left '' C-m
fi

tmux attach -t ${SESSION_NAME}
