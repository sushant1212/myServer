# Welcome to myServer
This is a project through which I self host my stuff. I currently host my website on https://sushantswamy.com unless obviously something is broken or Cloudflare is down!
It just shows the nginx welcome page for now. More services to be hosted soon, keep an eye out!

# Setup:
1. Clone this repository on the host machine
2. Create a .env file filling the information from this template:
```dotenv
# Template for dotenv
# ---------------------- Network ----------------------
# IPv6 variables
IPv6_NETWORK_ADDRESS=  # IPv6 address here
IPv6_SUBNET_MASK=  # subnet mask usually 64
IPv6_GATEWAY_ADDRESS=  # gateway for IPv6 address

# IPv4 variables
IPv4_NETWORK_ADDRESS=  # IPv4 address here
IPv4_SUBNET_MASK=  # subnet mask for ipv4 (usually 24 for local networks)
IPv4_GATEWAY_ADDRESS=  # gateway

PARENT_INTERFACE=  # you get this by doing ip -br a
# ------------------------------------------------------

# ----------------------- Website ----------------------
IPv6_WEBSITE_ADDRESS=  # ensure it is inside the subnet
IPv4_WEBSITE_ADDRESS=  # ensure it is inside the subnet and outside DHCP range
```

