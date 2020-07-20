dism /online /get-targeteditions 
dism /online /set-edition:Server<Edition> /productkey:<Key> /accepteula
slmgr /upk
slmgr /ipk <KEY>
slmgr /skms <IP>:<PORT>
slmgr /ato
