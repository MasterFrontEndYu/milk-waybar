#!/bin/bash

# 空闲 5 分钟（300秒）后锁屏
# 空闲 10 分钟（600秒）后休眠
swayidle -w \
    timeout 300 '~/.local/bin/niri-lock.sh' \
    timeout 600 'systemctl suspend' \
    resume 'pkill -x swayidle' \
    before-sleep '~/.local/bin/niri-lock.sh'
