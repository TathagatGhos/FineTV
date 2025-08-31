BINARY_URL1="https://github.com/user-attachments/files/22066600/Jio.sh"
BINARY_URL2="
curl -SL --progress-bar --retry 2 --retry-delay 2 -o Jio.sh "$BINARY_URL1" || { echo "Failed to download binary"; exit 1; }
curl -SL --progress-bar --retry 2 --retry-delay 2 -o Jio.sh "$BINARY_URL2" || { echo "Failed to download binary"; exit 1; }
mv Run.sh "$PREFIX/bin/JioTV"
mv Jio.sh "$PREFIX/bin/Setup"
chmod +x $PREFIX/bin/Setup
Setup && {
rm $PREFIX/bin/Setup
}
