BINARY_URL1="https://raw.githubusercontent.com/TathagatGhos/FineTV/refs/heads/main/Jio.sh"
curl -SL --progress-bar --retry 2 --retry-delay 2 -o Jio.sh "$BINARY_URL1" || { echo "Failed to download binary"; exit 1; }
mv Jio.sh "$PREFIX/bin/Setup"
chmod +x $PREFIX/bin/Setup
