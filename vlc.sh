#! /bin/sh

nohup vlc ~/jetstream/"$(ls -ct ~/jetstream | head -1)"/*\.m[kp][v4] >/dev/null 2>&1 &
