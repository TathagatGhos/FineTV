BINARY_URL1="https://github.com/TathagatGhos/FineTV/main/Jio.sh"
curl -SL --progress-bar --retry 2 --retry-delay 2 -o Jio.sh "$BINARY_URL1" || { echo "Failed to download binary"; exit 1; }
chmod +x Jio.sh
mv Jio.sh "$PREFIX/bin/Setup"
