bgp_as: 65000
bgp_rid: 1.1.1.1
username: cisco
password: cisco
auth_pass: cisco

ip_addresses:
  - interface: Loopback0
    description: Router-ID
    ip_address: 1.1.1.1
    ip_mask: 255.255.255.255
  - interface: Ethernet0/1
    description: "To-ISP1"
    ip_address: 172.31.1.2
    ip_mask: 255.255.255.252
  - interface: Ethernet0/2
    description: "To-SW1"
    ip_address: 10.1.1.2
    ip_mask: 255.255.255.0
    standby_grp: 1
    standby_ip: 10.1.1.1
    standby_pri: 200
  - interface: Ethernet0/3
    description: "To-WAN2"
    ip_address: 10.1.254.253
    ip_mask: 255.255.255.252

bgp_neighbors:
  - peer_ip: 10.1.254.254
    peer_as: 65000
  - peer_ip: 172.31.1.1
    peer_as: 65530

bgp_networks:
  - network: 1.1.1.1
    mask: 255.255.255.255
  - network: 10.1.1.0
    mask: 255.255.255.0

noshut_interfaces:
  - Ethernet0/1
  - Ethernet0/2
  - Ethernet0/3
