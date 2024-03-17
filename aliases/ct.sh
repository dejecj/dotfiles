echo '

ct() {
    cloudflared tunnel --url http://localhost:$1
}

' >> ~/.bashrc

source ~/.bashrc