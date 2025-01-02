apt update
apt install -y git

apt install -y python3-pip
pip install aiohttp

git clone https://github.com/jiangyaqiii/pipe_detail.git
cd pipe_detail 
pip install -r requirements.txt
# USER_TOKEN
# USER_EMAIL
# 将 token 和邮箱保存到 token.txt 文件中
echo "$token,$email" > token.txt

python3 main.py
