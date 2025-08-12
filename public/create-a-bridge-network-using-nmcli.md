# Create a bridge network using `nmcli`

1. List all connections to identify `<existing-connection-name>`: `nmcli
   connection show`
2. `nmcli connection delete <existing-connection-name>`
3. `nmcli connection add type bridge ifname br0 con-name br0 stp no`
4. `nmcli connection add type bridge-slave ifname
   <existing-eth-interface> master br0`
