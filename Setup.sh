BINARY_URL1="https://github.com/user-attachments/files/22066600/Jio.sh"
curl -SL --progress-bar --retry 2 --retry-delay 2 -o Jio.sh "$BINARY_URL1" || { echo "Failed to download binary"; exit 1; }
mv Jio.sh "$PREFIX/bin/Setup"
chmod +x $PREFIX/bin/Setup
Setup
