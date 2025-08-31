source ~/.bashrc && {
IP="$(python -c "import socket; s=socket.socket(socket.AF_INET, socket.SOCK_DGRAM); s.connect(('8.8.8.8', 80)); print(s.getsockname()[0]); s.close()")"
PORT=$((1000 + RANDOM % 9000))
clear
jiotv_go -c "/data/data/com.termux/files/home/.jiotv_go/bin/jiotv-config.json" --skip-update run --host $IP --port $PORT
}