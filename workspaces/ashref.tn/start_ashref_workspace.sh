#!/bin/bash

session_name="ashref.tn"

tmux has-session -t $session_name 2>/dev/null

if [ $? != 0 ]; then
  tmux new-session -s $session_name -d

  # Window 1: Development
  tmux rename-window -t $session_name:0 "Development"
  tmux send-keys -t $session_name:0 "echo 'Development workspace ready - customize this command'" C-m

  # Window 2: AWS CLI
  tmux new-window -t $session_name:1 -n "AWS CLI"
  tmux send-keys -t $session_name:1 "echo 'AWS CLI workspace - add your commands here'" C-m

  # You can add more windows and panes here as needed
  # Example: another pane in the AWS CLI window
  # tmux split-window -v -t $session_name:1
  # tmux send-keys -t $session_name:1.1 "aws s3 ls" C-m

fi

tmux attach-session -t $session_name
