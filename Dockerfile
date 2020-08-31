#clones the repo
RUN git clone https://github.com/Sir-God/shell-bot
# install rclone
# start process
# changes dir to shell-bot
CMD cd shell-bot
RUN curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
# unzip rclone
CMD unzip rclone-current-linux-amd64.zip
# rename rclone
CMD mv rclone-current-linux-amd64 rclone
#remove zip rclone
CMD rm -rf rclone-current-linux-amd64.zip
#Installs python and build-essential
#Installs python and 
CMD sudo apt install -y make python build-essential
#Runs npm install
CMD npm install
#Starts the bot
CMD node server
 
