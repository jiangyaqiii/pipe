if tmux ls | grep -q pipe; then
    echo "pipe正在运行"
else
    echo "停止"
fi
