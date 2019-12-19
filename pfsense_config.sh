pfctl -d
easyrule pass wan tcp any any 443
easyrule pass wan tcp any any 22
ssh -L 4443:<LAN_IP>:443 root@<WAN_IP>
