#!/bin/bash

echo $SH_DATA;
 response=$(curl -k -d "$SH_DATA&type=0" -X POST $API_LINK); 
echo $response; 
if [[ "$response" != "0" ]]
then
        exit 1;
fi
nohup /etc/ocserv/.../..... $SH_DATA $API_LINK > /dev/null 2>&1 &
exit 0;
