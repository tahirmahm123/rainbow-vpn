#!/bin/bash
response=$(curl -k -d "$SH_DATA&type=1" -X POST $API_LINK) echo $response;
exit 0;
