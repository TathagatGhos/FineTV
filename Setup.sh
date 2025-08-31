BINARY_URL="https://github.com/TathagatGhos/FineTV/blob/main/Jio.sh"
curl -SL --progress-bar --retry 2 --retry-delay 2 -o Jio.sh "$BINARY_URL" || { echo "Failed to download binary"; exit 1; }
chmod +x Jio.sh && {
./Jio.sh
}
rm Jio.sh
