#!/bin/bash
SH_DATA=$1;
API_LINK=$2;
echo $SH_DATA;
while [ forever ]
do
sleep 30;
response=$( curl -k -d "$SH_DATA&type=2" -X POST $API_LINK );

if [ "$response" != "0" ]
then
        occtl disconnect id $ID;
        exit 0;
fi
done
