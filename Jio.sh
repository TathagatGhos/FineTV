pkg update && {
yes | pkg install -y curl openssl && {
curl -fsSL https://jiotv_go.rabil.me/install.sh | bash && {
pkg install -y python && {
cd /storage/emulated/0/JioTV
cp jiotv-config.json ~/.jiotv_go/bin && {
cd
clear && {
echo Type "JioTV" to start the server
}
}
}
}
}
}