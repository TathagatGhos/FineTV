BINARY_URL1="https://github.com/user-attachments/files/22066600/Jio.sh"
BINARY_URL2="https://github.com/user-attachments/files/22066876/Run.sh"
BINARY_URL3="https://github.com/user-attachments/files/22066704/jiotv-config.json"
curl -SL --progress-bar --retry 2 --retry-delay 2 -o Jio.sh "$BINARY_URL1" || { echo "Failed to download binary"; exit 1; }
curl -SL --progress-bar --retry 2 --retry-delay 2 -o Run.sh "$BINARY_URL2" || { echo "Failed to download binary"; exit 1; }
curl -SL --progress-bar --retry 2 --retry-delay 2 -o jiotv-config.json "$BINARY_URL3" || { echo "Failed to download binary"; exit 1; }
mv Jio.sh "$PREFIX/bin/Setup"
chmod +x $PREFIX/bin/Setup
mv Run.sh "$PREFIX/bin/JioTV"
chmod +x $PREFIX/bin/JioTV
mv jiotv-config.json "$HOME/.jiotv_go/bin/jiotv-configuration.json"
Setup && {
rm $PREFIX/bin/Setup
}
