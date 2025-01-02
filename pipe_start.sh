sudo apt-get update
apt install git

apt install -y python3-pip
pip install aiohttp

git clone https://github.com/jiangyaqiii/pipe_detail.git
cd pipe_detail 
pip install -r requirements.txt
# USER_TOKEN
# USER_EMAIL
# 将 token 和邮箱保存到 token.txt 文件中
echo "$token,$email" > token.txt

if tmux ls | grep -q pipe; then
    tmux kill-session -t pipe
fi

cd pipe
python main.py
