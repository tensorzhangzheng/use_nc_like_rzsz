# new shortcut rf point to receive_server.sh
# get current full path
current_path=`pwd`
cat "alias rf='${current_path}/receive_file.sh'" >> ~/.bashrc
echo "please execure this command \"source ~/.bashrc\""
