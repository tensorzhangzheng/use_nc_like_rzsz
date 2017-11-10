# send Z-Modem cancel sequence
file_full_name=`osascript -e 'tell application "iTerm2" to activate' -e 'tell application "iTerm2" to set thefile to choose file with prompt "Choose a file to send"' -e "do shell script (\"echo \"&(quoted form of POSIX path of thefile as Unicode text)&\"\")"`
if [[ $file_full_name = "" ]]; then
	kill -2
fi
file_name=`echo "${file_full_name}" | awk '{split($0,a,"/"); print a[length(a)]}'`
`echo "${file_name}" | nc 10.39.3.156 10001`
`nc 10.39.3.156 10001 < ${file_full_name}`
