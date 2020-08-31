#clones the repo
RUN git clone https://github.com/Sir-God/shell-bot
#install rclone
CMD curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
CMD unzip rclone-current-linux-amd64.zip
CMD mv rclone-current-linux-amd64 rclone
CMD rm -rf rclone-current-linux-amd64.zip
#changes dir to shell-bot
CMD cd shell-bot
#Installs python and build-essential
CMD sudo apt install -y make python build-essential
#Runs npm install
CMD npm install
#Starts the bot
CMD node server
