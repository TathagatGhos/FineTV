BINARY_URL1="https://github.com/TathagatGhos/FineTV/main/Jio.sh"
curl -SL --progress-bar --retry 2 --retry-delay 2 -o Setup.sh "$BINARY_URL1" || { echo "Failed to download binary"; exit 1; }
chmod +x Setup.sh
mv Setup.sh "$PREFIX/bin/Setup"
