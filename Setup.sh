BINARY_URL2="https://github.com/user-attachments/files/22067475/Run.sh"
BINARY_URL3="https://github.com/user-attachments/files/22066704/jiotv-config.json"
curl -SL --progress-bar --retry 2 --retry-delay 2 -o Run.sh "$BINARY_URL2" || { echo "Failed to download binary"; exit 1; }
curl -SL --progress-bar --retry 2 --retry-delay 2 -o jiotv-config.json "$BINARY_URL3" || { echo "Failed to download binary"; exit 1; }
pkg update && {
yes | pkg install -y curl openssl && {
curl -fsSL https://jiotv_go.rabil.me/install.sh | bash && {
pkg install -y python && {
mv Run.sh "$PREFIX/bin/JioTV"
chmod +x $PREFIX/bin/JioTV
mv jiotv-config.json "$HOME/.jiotv_go/bin"
clear && {
echo Type ""JioTV"" to start the server
}
}
}
}
}
