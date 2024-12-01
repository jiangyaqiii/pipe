sudo apt-get update
apt install git

git clone https://github.com/jiangyaqiii/pipe_detail.git
cd pipe_detail 
pip install -r requirements.txt
# USER_TOKEN
# USER_EMAIL
# 将 token 和邮箱保存到 token.txt 文件中
echo "$USER_TOKEN,$USER_EMAIL" > token.txt

if tmux ls | grep -q pipe; then
    tmux kill-session -t pipe
fi

tmux new-session -d -s pipe  # 创建新的 tmux 会话，名称为 pipe
tmux send-keys -t pipe "cd pipe" C-m  # 切换到 pipe 目录
tmux send-keys -t pipe "python3 main.py" C-m  # 启动 main.py

# 查看日志
# tmux attach -t pipe
