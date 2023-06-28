#!/usr/bin/sh

TOKEN="6014557277:AAFTyBFXhPePdG8s9yZFhmC_pS1Wp_pvxdo"
CHAT_ID="442218240"
FILE_TO_SEND="$1"
TEXT_TO_SEND="$(cat $FILE_TO_SEND)"

if [[ ! -f $FILE_TO_SEND ]]; then 
    echo "error: '$FILE_TO_SEND' does not exist"
    exit 1
fi

curl -X POST -H "Content-Type:multipart/form-data" -F chat_id=$CHAT_ID -F document=@$FILE_TO_SEND "https://api.telegram.org/bot$TOKEN/sendDocument"
