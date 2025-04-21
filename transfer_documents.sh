#!/bin/bash

# === CONFIGURATION ===
SOURCE_DIR="/home/user/Documents/to-send"
TARGET_USER="remoteuser"
TARGET_IP="192.168.1.20"
TARGET_DIR="/home/remoteuser/Downloads/received"
FILE_TYPES="*.docx *.xlsx *.pptx *.pdf *.xml"

# === TRANSFER PROCESS ===
echo "Transferring files from $SOURCE_DIR to $TARGET_USER@$TARGET_IP:$TARGET_DIR"

for type in $FILE_TYPES; do
    find "$SOURCE_DIR" -type f -name "$type" -exec scp {} "$TARGET_USER@$TARGET_IP:$TARGET_DIR" \;
done

echo "Transfer complete!"


#Give It Permission to Run :
# chmod +x transfer_documents.sh
#Then run it:
#./transfer_documents.sh

#Customize If Needed
#You can tweak:

#SOURCE_DIR: the folder where files are located

#TARGET_USER: username on Computer 2

#TARGET_IP: IP of Computer 2 on the LAN

#TARGET_DIR: folder to receive the files