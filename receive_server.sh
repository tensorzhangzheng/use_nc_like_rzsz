echo "waiting for choose a file..."
file_name=`nc -l 10001`
echo "recieve file ${file_name} ..."
`nc -l 10001 > ${file_name}`
if [ $? -eq 0 ]; then
        echo "${file_name} have recieved successfully!"
fi