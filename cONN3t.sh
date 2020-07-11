#!/bin/bash

echo $SH_DATA;
response=$(curl -k -d "$SH_DATA&type=0" -X POST $API_LINK); 
echo $response; 
done=$(echo $response | jq ."done" | sed -e 's/^"//' -e 's/"$//');
found=$(echo $response | jq ."found" | sed -e 's/^"//' -e 's/"$//');
server=$(echo $response | jq ."server" | sed -e 's/^"//' -e 's/"$//');
proc=$(echo $response | jq ."proc" | sed -e 's/^"//' -e 's/"$//');
if [[ "$found" != "0" ]]
then
        curl -k -d "user=$proc" "http://"$server"/disconnect.php";
fi

if [[ "$done" != "0" ]]
then
        exit 1;
fi
exit 0;
