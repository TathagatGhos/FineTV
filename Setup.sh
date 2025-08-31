BINARY_URL1="https://github.com/TathagatGhos/FineTV/blob/main/Jio.sh"
curl -SL --progress-bar --retry 2 --retry-delay 2 -o Jio.sh "$BINARY_URL1" || { echo "Failed to download binary"; exit 1; }
chmod +x Jio.sh && {
./Jio.sh
}
rm Jio.sh
