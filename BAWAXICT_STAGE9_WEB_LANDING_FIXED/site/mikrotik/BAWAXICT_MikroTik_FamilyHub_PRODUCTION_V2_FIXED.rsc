# aug/19/2026 11:10:18 by RouterOS 6.49.17
# software id = Q015-UKDB
#
# model = 951Ui-2HnD
# serial number = 558304766BDD
/interface bridge
add name=bridgeHOTSPOT
add name=bridgeLAN
/interface ethernet
set [ find default-name=ether4 ] name=ether4HOTSPOT
set [ find default-name=ether5 ] name=ether5HOTSPOT
/interface wireless
set [ find default-name=wlan1 ] band=2ghz-b/g/n disabled=no frequency=auto \
    mode=ap-bridge ssid="BAWAX-ICT SMART SERVICES" wireless-protocol=802.11
/interface list
add name=WAN
add name=LAN
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip hotspot profile
add dns-name=bawaxict.edu.net hotspot-address=192.168.6.1 html-directory=\
    HOTSPOT1 login-by=http-chap name=hsprof1 use-radius=yes
/ip pool
add name=hs-pool-7 ranges=192.168.6.10-192.168.6.254
add name=dhcp ranges=192.168.88.10-192.168.88.254
/ip dhcp-server
add address-pool=hs-pool-7 disabled=no interface=bridgeHOTSPOT lease-time=1h \
    name=dhcp1
/ip hotspot
add address-pool=hs-pool-7 addresses-per-mac=1 disabled=no interface=\
    bridgeHOTSPOT name=hotspot1 profile=hsprof1
/tool user-manager customer
set admin access=\
    own-routers,own-users,own-profiles,own-limits,config-payment-gw
/tool user-manager profile
add name=NEW1GB name-for-users=NEW1GB override-shared-users=off owner=admin \
    price=0 starts-at=logon validity=1d
add name=NEW2GBDP name-for-users=2GB override-shared-users=off owner=admin \
    price=0 starts-at=logon validity=2d
add name=NEW5GBDP name-for-users=5GB override-shared-users=off owner=admin \
    price=0 starts-at=logon validity=1d
add name=NEW10GBDP name-for-users=10GB override-shared-users=off owner=admin \
    price=0 starts-at=logon validity=1d
add name=NEW20GBDP name-for-users=20GB override-shared-users=off owner=admin \
    price=0 starts-at=logon validity=1d
add name=NEW5GBWP name-for-users=5GBW override-shared-users=off owner=admin \
    price=0 starts-at=logon validity=1w
add name=NEW10GBWP name-for-users=10GB7 override-shared-users=off owner=admin \
    price=0 starts-at=logon validity=1w
add name=NEW20GBWP name-for-users=20GB7 override-shared-users=off owner=admin \
    price=0 starts-at=logon validity=1w
add name=NEW5GBM name-for-users=5GBM override-shared-users=off owner=admin \
    price=0 starts-at=logon validity=4w2d
add name=NEW10GBM name-for-users=10GBM override-shared-users=off owner=admin \
    price=0 starts-at=logon validity=4w2d
add name=NEW20GBM name-for-users=20GBM override-shared-users=off owner=admin \
    price=0 starts-at=logon validity=4w2d
add name=NPMONTHLY name-for-users=30NP override-shared-users=off owner=admin \
    price=0 starts-at=logon validity=4w2d
add name=NP5GBM name-for-users=NP5GB override-shared-users=off owner=admin \
    price=0 starts-at=logon validity=1d
/tool user-manager profile limitation
add address-list="" download-limit=1048576000B group-name="" ip-pool="" \
    ip-pool6="" name=1GBNEW owner=admin rate-limit-min-rx=2097152B \
    rate-limit-min-tx=2097152B rate-limit-rx=3145728B rate-limit-tx=3145728B \
    transfer-limit=0B upload-limit=1048576000B uptime-limit=1d
add address-list="" download-limit=2097152000B group-name="" ip-pool="" \
    ip-pool6="" name=2GBNEW owner=admin rate-limit-min-rx=2097152B \
    rate-limit-min-tx=2097152B rate-limit-rx=3145728B rate-limit-tx=3145728B \
    transfer-limit=0B upload-limit=2097152000B uptime-limit=1d
add address-list="" download-limit=5242880000B group-name="" ip-pool="" \
    ip-pool6="" name=5GBNEW owner=admin rate-limit-min-rx=2097152B \
    rate-limit-min-tx=2097152B rate-limit-rx=3145728B rate-limit-tx=3145728B \
    transfer-limit=0B upload-limit=5242880000B uptime-limit=1d
add address-list="" download-limit=10485760000B group-name="" ip-pool="" \
    ip-pool6="" name=10GBNEW owner=admin rate-limit-min-rx=2097152B \
    rate-limit-min-tx=2097152B rate-limit-rx=3145728B rate-limit-tx=3145728B \
    transfer-limit=0B upload-limit=10485760000B uptime-limit=1d
add address-list="" download-limit=20971520000B group-name="" ip-pool="" \
    ip-pool6="" name=20GBNEW owner=admin rate-limit-min-rx=2097152B \
    rate-limit-min-tx=2097152B rate-limit-rx=3145728B rate-limit-tx=3145728B \
    transfer-limit=0B upload-limit=20971520000B uptime-limit=1d
add address-list="" download-limit=5242880000B group-name="" ip-pool="" \
    ip-pool6="" name=5GBNEW7 owner=admin rate-limit-min-rx=1048576B \
    rate-limit-min-tx=1048576B rate-limit-rx=2097152B rate-limit-tx=2097152B \
    transfer-limit=0B upload-limit=5242880000B uptime-limit=1w
add address-list="" download-limit=10485760000B group-name="" ip-pool="" \
    ip-pool6="" name=10GBNEW7 owner=admin rate-limit-min-rx=1048576B \
    rate-limit-min-tx=1048576B rate-limit-rx=2097152B rate-limit-tx=2097152B \
    transfer-limit=0B upload-limit=10485760000B uptime-limit=1w
add address-list="" download-limit=20971520000B group-name="" ip-pool="" \
    ip-pool6="" name=20GBNEW7 owner=admin rate-limit-min-rx=1048576B \
    rate-limit-min-tx=1048576B rate-limit-rx=2097152B rate-limit-tx=2097152B \
    transfer-limit=0B upload-limit=20971520000B uptime-limit=1w
add address-list="" download-limit=5242880000B group-name="" ip-pool="" \
    ip-pool6="" name=5GBNEWM owner=admin rate-limit-min-rx=1048576B \
    rate-limit-min-tx=1048576B rate-limit-rx=2097152B rate-limit-tx=2097152B \
    transfer-limit=0B upload-limit=5242880000B uptime-limit=4w2d
add address-list="" download-limit=10485760000B group-name="" ip-pool="" \
    ip-pool6="" name=10GBNEWM owner=admin rate-limit-min-rx=1048576B \
    rate-limit-min-tx=1048576B rate-limit-rx=2097152B rate-limit-tx=2097152B \
    transfer-limit=0B upload-limit=10485760000B uptime-limit=4w2d
add address-list="" download-limit=20971520000B group-name="" ip-pool="" \
    ip-pool6="" name=20GBM owner=admin rate-limit-min-rx=1048576B \
    rate-limit-min-tx=1048576B rate-limit-rx=2097152B rate-limit-tx=2097152B \
    transfer-limit=0B upload-limit=20971520000B uptime-limit=4w2d
add address-list="" download-limit=94371840000B group-name="" ip-pool="" \
    ip-pool6="" name=30NP owner=admin rate-limit-min-rx=1048576B \
    rate-limit-min-tx=1048576B rate-limit-rx=2097152B rate-limit-tx=2097152B \
    transfer-limit=0B upload-limit=94371840000B uptime-limit=4w2d
add address-list="" download-limit=5242880000B group-name="" ip-pool="" \
    ip-pool6="" name=NP5GB owner=admin rate-limit-min-rx=1048576B \
    rate-limit-min-tx=1048576B rate-limit-rx=2097152B rate-limit-tx=2097152B \
    transfer-limit=0B upload-limit=5242880000B uptime-limit=1d
/interface bridge port
add bridge=bridgeHOTSPOT interface=ether5HOTSPOT
add bridge=bridgeHOTSPOT interface=wlan1
add bridge=bridgeHOTSPOT interface=ether4HOTSPOT
add bridge=bridgeHOTSPOT interface=ether3
add bridge=bridgeLAN interface=ether2
/interface list member
add interface=ether1 list=WAN
add interface=bridgeHOTSPOT list=LAN
add interface=bridgeLAN list=LAN
/ip address
add address=192.168.6.1/24 comment="hotspot network" interface=bridgeHOTSPOT \
    network=192.168.6.0
add address=192.168.88.1/24 comment=LAN interface=bridgeLAN network=\
    192.168.88.0
/ip dhcp-client
add disabled=no interface=ether1
/ip dhcp-server
add add-arp=yes address-pool=dhcp always-broadcast=yes disabled=no interface=\
    bridgeLAN name=dhcp2 use-radius=yes
/ip dhcp-server network
add address=192.168.6.0/24 comment="hotspot network" gateway=192.168.6.1 dns-server=192.168.6.1
add address=192.168.88.0/24 gateway=192.168.88.1 netmask=24
/ip dns
set allow-remote-requests=yes servers=8.8.8.8
/ip dns static
add address=192.168.6.147 name=chat.bawaxict
add address=192.168.6.147 name=chat.bawaxict.edu.net
/ip firewall filter
add action=accept chain=input comment="FW: allow established and related" connection-state=established,related
add action=drop chain=input comment="FW: drop invalid input" connection-state=invalid
add action=accept chain=input comment="FW: allow DNS from LAN/hotspot" dst-port=53 in-interface-list=LAN protocol=udp
add action=accept chain=input comment="FW: allow DNS from LAN/hotspot" dst-port=53 in-interface-list=LAN protocol=tcp
add action=accept chain=input comment="FW: allow ICMP from LAN/hotspot" in-interface-list=LAN protocol=icmp
add action=accept chain=input comment="FW: allow hotspot web portal" dst-port=80 in-interface=bridgeHOTSPOT protocol=tcp
add action=drop chain=input comment="FW: drop unsolicited WAN input" in-interface-list=WAN
add action=drop chain=input comment="FW: default input drop"
add action=accept chain=forward comment="FW: allow established and related" connection-state=established,related
add action=drop chain=forward comment="FW: drop invalid forwarding" connection-state=invalid
add action=accept chain=forward comment="FW: allow unauthenticated FamilyHub chat" dst-address=192.168.6.147 dst-port=8080 protocol=tcp src-address=192.168.6.0/24
add action=accept chain=forward comment="FW: allow LAN/hotspot to WAN" in-interface-list=LAN out-interface-list=WAN
add action=accept chain=forward comment="FW: allow trusted LAN-to-LAN forwarding" in-interface-list=LAN out-interface-list=LAN
add action=drop chain=forward comment="FW: drop unsolicited WAN forwarding" connection-state=new in-interface-list=WAN
add action=drop chain=forward comment="FW: default forward drop"
/ip firewall nat
add action=passthrough chain=unused-hs-chain comment=\
    "place hotspot rules here" disabled=yes
add action=masquerade chain=srcnat comment="masquerade hotspot network" \
    src-address=192.168.6.0/24
add action=masquerade chain=srcnat out-interface-list=WAN
add action=masquerade chain=srcnat comment="masquerade hotspot network" \
    src-address=192.168.6.0/24
add action=masquerade chain=srcnat comment="masquerade hotspot network" \
    src-address=192.168.88.0/24
add action=masquerade chain=srcnat comment="masquerade hotspot network" \
    src-address=192.168.6.0/24
/ip hotspot ip-binding
add mac-address=7E:B9:7D:CF:ED:DD type=bypassed
add mac-address=56:51:CE:0F:38:8E server=hotspot1 type=bypassed
add mac-address=22:6F:09:6A:09:60 server=hotspot1 type=bypassed
add mac-address=AA:DD:3F:08:4C:B0 type=bypassed
add mac-address=EC:1D:9E:1C:75:9A server=hotspot1 type=bypassed
add mac-address=00:26:C7:F8:CB:8C type=bypassed
add mac-address=EC:1D:9E:1C:78:0D server=hotspot1 type=bypassed
add address=192.168.6.147 server=hotspot1 type=bypassed
/ip hotspot user
add name=bawax server=hotspot1
add name=admin
/ip hotspot walled-garden
add comment="place hotspot rules here" disabled=yes
/ip hotspot walled-garden ip
add action=accept comment="BAWAXICT Community Chat - no ticket required" dst-address=192.168.6.147 dst-port=8080 protocol=tcp
add action=accept comment="BAWAXICT FamilyHub hostname - no ticket required" dst-host=chat.bawaxict.edu.net dst-port=8080 protocol=tcp
/radius
add address=127.0.0.1 service=hotspot
/radius incoming
set accept=yes
/system clock
set time-zone-name=Africa/Lagos
/tool user-manager database
set db-path=user-manager
/tool user-manager profile profile-limitation
add from-time=0s limitation=1GBNEW profile=NEW1GB till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation=2GBNEW profile=NEW2GBDP till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation=5GBNEW profile=NEW5GBDP till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation=10GBNEW profile=NEW10GBDP till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation=20GBNEW profile=NEW20GBDP till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation=5GBNEW7 profile=NEW5GBWP till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation=10GBNEW7 profile=NEW10GBWP till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation=20GBNEW7 profile=NEW20GBWP till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation=5GBNEWM profile=NEW5GBM till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation=10GBNEWM profile=NEW10GBM till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation=20GBM profile=NEW20GBM till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation=30NP profile=NPMONTHLY till-time=4h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
add from-time=0s limitation=NP5GB profile=NP5GBM till-time=23h59m59s \
    weekdays=sunday,monday,tuesday,wednesday,thursday,friday,saturday
/tool user-manager router
add coa-port=1700 customer=admin disabled=no ip-address=127.0.0.1 log=\
    auth-fail name=bawax use-coa=no
/tool user-manager user
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbjie \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBd9m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdvr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkvy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBss7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmar \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5gc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBd53 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrgr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBs43 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4t8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmrf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3fz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6bw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBypq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBa7e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBu3y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBckc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvy5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbqq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6qw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxar \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8ux \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpye \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBaj5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBft6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9e7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBi6d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfhu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvim \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GB246 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=15GB \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdaf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB1ab \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=abcd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=abcf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBr3j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgh3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4a8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBuze \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBihi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBm5b \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7v3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5i6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB74x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBij7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBari \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9dm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvqq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6bk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBy2g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzzn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB82v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBt9g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBssr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjhv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4u2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwc5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbj6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsa7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBquc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsx3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxgh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfsm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqmy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8zt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzwh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtcn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkyc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpsg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvzt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjeq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzm3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB863 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5sp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3ap \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkbc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBa83 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhyh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6e6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBk6r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB46s \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2r9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBaax \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBuus \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBemf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBt26 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB49g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBymq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsfm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzmx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBehp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBe8g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBy6x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBb5i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzka \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgdq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhh4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2wu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBecc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBy8n \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBg39 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsag \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBemg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2tj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBckb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtd8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB332 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBe9k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBheh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB982 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBafa \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByxa \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7bp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjkx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBnyh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByak \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6ct \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB46m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwky \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBc2n \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBk57 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwab \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBnu3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBya6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB24j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBk24 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBykn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2zb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBce4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkqt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB62f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2pc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzpj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5vw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxwt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBznp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqiw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrnh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBi5w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcsx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBv4t \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBa6n \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbkq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6hy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgup \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBt8g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBz9e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBusi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqup \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9xn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqd9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjjh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2yc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBiz9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvpq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4a2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkxx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByx4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7cm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBh3u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByd6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1726 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB111 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB222 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBciq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBw5n \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBm2p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBes3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhqy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBny2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB29w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfzf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhf3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxh8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBp9a \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2i7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBija \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3yw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrrh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9y2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrpg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwt6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBm2y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwx5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzu8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBncp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqut \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB274 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBs34 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkbx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBc2d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBnrt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3jy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvpc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBr59 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBif4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxmr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB78e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjqd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBf2f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5ep \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8xp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4jp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBphz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfui \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgme \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjdf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBce6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpb3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfkm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtbm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfbz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhrv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4p5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsav \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBeds \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvx7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpja \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8uv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9mc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfay \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxhc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbx3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBk2j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBi3w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjy5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2ei \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=15gb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=free \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBnin \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrrs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpxb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBaa2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbdd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBa8h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfg4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdsg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBux7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwzi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBch3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB798 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBiyd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2zx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByrp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBygi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5dg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4qt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBuqu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrf4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrnd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB364 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBec3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBg2e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBusm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBphh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBb55 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBf59 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBju2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBz89 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBadw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmzk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBk3a \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBt2h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBaxi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzas \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcqi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5ms \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBthh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbng \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBujk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhz5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfec \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7qa \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBas4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB35i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4hr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxi4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgqj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkja \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfxy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzv8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtvp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5sm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4gy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBney \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7xi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBd7u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBj5p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5cx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBeks \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByq3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbj9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBeww \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBw98 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkd4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7cw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8nm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB765 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8j2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8vf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhva \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBae3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdmh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBf5q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBagr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBd9e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjk4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjem \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxhv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhcs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmdw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByfq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBnhm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtqz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpv2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmzq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2xg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBun6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBeu3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBeni \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBduq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBf6v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB94h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2yu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBr8r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB453 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBm93 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBims \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBb3j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwpp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtgi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB97q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtuc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBx9c \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqq2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7a5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBuw7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBt8e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvfj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbkb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvf5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBay5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqr7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjp2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfhq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBisi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB52s \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBipp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=ugo1010 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbkri \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbw6h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbyjc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbujx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbhy5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbq5s \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbzer \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbqbc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbeq7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbnsq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb82h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbfpf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbzec \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbds2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbzpg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbhnu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbidb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbmx8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb265 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb47y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb2f8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbtfc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbmvc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbty4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbp8i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb4nk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbd3w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbw2s \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbrqv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbff8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbb5d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbwcq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbf76 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbz2t \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb25m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbjws \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbszf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbn3k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbn97 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbt2j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb7z2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbryj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbnat \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gby7g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbur2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbtie \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbzr6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbnfc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbs6k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbq64 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbr56 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbnk4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbzkv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbxn6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=group1 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=group2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=test \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=desire \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbr3y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3s8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzgz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwnt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBs9j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBc7f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjg4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBftz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBibb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBy7p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB46k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2ph \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4jt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBufs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6ir \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfhf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB98x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8ca \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhjd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBi88 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBk6h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqkd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBz5d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwp7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7jv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBz46 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpf2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrq7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBam9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBz9n \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfw8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBeie \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfcs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3tv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3qh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBumx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBs9h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBs8w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBw9u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhbj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBa2t \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBejm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBq8x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5bu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBf82 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4h8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB39c \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5j9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjim \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfgx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtyk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBza9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxgc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBp23 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBe8f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBd8r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBit8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBqzz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB44c \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBhh4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBuuq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBvga \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBzci \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBv3m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBgr3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBm8a \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB45j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBfse \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBvns \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBw5u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBuaw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBggu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBf58 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBizy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBft9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB8xg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBf7m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB3sj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBc35 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBpch \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBzyi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBim7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBvhd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBctm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBfpp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBcu6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBv2x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBq93 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBme9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBh3q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBdbj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB5xu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBcfr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBr4b \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBres \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBgz9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBv5t \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBjgx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBdnw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB2aj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBb75 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBatm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBj6h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBxrr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBpkz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBt29 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB9th \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBqz5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB6ne \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBi7m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBe5f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB2s4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBuyz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB7cf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBqj9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBp97 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBrpf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbqra \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbdks \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb6ks \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbf7s \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb967 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbzqd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbi5g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbgvm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb4i2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbu4r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb7nj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbrs8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbd64 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb8us \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbp7n \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbwdq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbsn2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbvsv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbqwn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbz9j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbmyu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbna9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbxqd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb2jt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbudz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb6w7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbi29 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbcbt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbccd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbisv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb7su \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbj7q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbk9i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbxwy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbraq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb85x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbe6f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb5ty \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbk9j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb5qw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbmqk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb53j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbjkh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbnv7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbwua \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbrhd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb5vi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb84b \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbw8r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb7fm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb59x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbtqw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbjc2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbk9n \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbd6u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb2qh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbwr2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb7ap \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbqdr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb3bj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbr26 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb7ep \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbh6f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbcst \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb5zp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbrhq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbb7z \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbki2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbaca \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbj5t \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbgrz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbeww \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb2ac \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbm4h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbie9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbyrp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbrxk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbi8n \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbc58 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbtbr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbm8x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbv9p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbgd4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbznu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbz9k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb542 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gby2j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbhpy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbgw9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbec6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbaus \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb5zg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbf8i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbgik \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbac3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbnt6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbx6f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbwge \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbjx2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbpnq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbqwj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbk9y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbqai \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbhdv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb9y7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb8xy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbkmn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbt3c \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbc43 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbyka \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbtwg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbv73 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbjtv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBn9c \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB4gi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBwqp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBx7c \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB9c9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBeyc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBeud \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBvdi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBujx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBzp4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBqyu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBj7k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB5s9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBc53 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB94y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB2ws \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBjts \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBy7k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBhzs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBgke \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbfah \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbyag \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbcja \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbi5i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbrmk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbhi2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbr3f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb458 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbn3v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbi52 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbyec \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbh4g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbydd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBcaa \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBcyr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBvtv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB2ew \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB8p8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBfgk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500pvt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500n9z \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500xqs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500gz2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500x8f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500wpi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500f7u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5007h4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500n4d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5007v7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500ddc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500hr7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500zw2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500b9p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500jes \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500njm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500dfh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500hcd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500ykf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G79ka \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7dqg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7bjz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G74yb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7y5b \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7p9w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7x8g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7dxq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G75at \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G773k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G74kv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7csg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7inz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7jfp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7z77 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7ci8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G78yn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7aky \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7ty8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7pff \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G5n4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gin4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Ge8s \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gbxe \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gi9k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gkyq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gjxp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G2qr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gear \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gpst \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Ghme \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G2j4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gff2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gvaa \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Ge3g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gsh6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Ghc3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G5cy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Grx3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gri7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G77td \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G732b \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G77jb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7nyy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7622 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7sf2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G725b \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7f5a \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G77sg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7rpt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7r5k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7eid \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7wyt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7fig \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7pcm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7j6m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7rw7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7iac \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7tes \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G79ma \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gs77 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gafe \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7tm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gcdt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gpwe \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gghe \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7fa \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gya7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gye5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G69p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gvye \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G4r8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Ggkd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G678 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gdic \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G5wx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G8d6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G47i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G5zi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=500pzi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=bawax \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=khal \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=sams \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=abdu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=toir \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=mich \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=222 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbxky \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7m28 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7cp2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7ex8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7y3z \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7xra \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7nbw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G78ag \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7t3x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7ciz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7zh4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7q5t \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G76wu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G75id \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7uy2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G78jc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G72sd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G73i8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7raj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7a3c \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7k9c \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7vpz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G77rj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7ha6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7mwu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7fbr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7igb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7bdr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7wt2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7duy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7bru \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G72u4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7mux \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7gw8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7n53 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7i45 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7f6p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7av2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7pyj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7azw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7i4j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7cqu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7nj2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7et4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7nys \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7fxi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7sgf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7z8e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7i5m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7g6p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7idy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7yf7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7r4f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7a3f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7ijf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7tqe \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7p6q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7d94 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7svb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7d2h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7qqp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7q95 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G783v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7e7g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbamr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbrcj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb78k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbty6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbw6r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbsr3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=bawaxICT \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gnhf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gtw4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gefi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gq5s \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G58g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G58u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G6vh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G9kf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G4ge \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gnwv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gbtv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gp5z \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Ggrw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gnuz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gaun \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gppi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Ghwj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gv39 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G4ee \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Geu9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gjwt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G9zp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Guxd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G8dt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G5ew \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Grz3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gx4k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G9tz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gkcw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gyna \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Gd5r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7ya \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2Grfe \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7qye \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7d6i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7x3j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7emq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7tiq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7sfj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G76nr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G753q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7j8b \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7k86 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7yzf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G79xb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7qep \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7nrr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G74x9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G73gy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7vp5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7vu7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7zie \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7bc6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7m4y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7jar \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7m4a \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7tf3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7pjs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7giv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7fdj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7945 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G73p6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G755p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7sru \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G72mb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7s2v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Ghh5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Ghp7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gy4f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G44i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G7pv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G6iu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G6wv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G8e2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gk36 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gap2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gwxh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gd65 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gmsn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G93g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G8bk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gmm5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gj8s \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gd49 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gunz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Grgs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G3au \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gcsh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gm7d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gj4g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gvpn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gbkd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G2nj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1G5y8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gire \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gcg2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gews \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gfv3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1Gjm8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7cuf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7b4h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G74jd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G78xf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7kmf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7faz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G757p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7wf3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7dc3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7ds9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G75in \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G73sz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7di9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7bh5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7adp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7cpj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7qcd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7au5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7cas \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7dav \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7dj4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G734w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7h35 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G72dw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G77h3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7db2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7hwu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7kc5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G76jq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7vt5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7yti \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7wj8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbsr4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbf8y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbdp7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbjtz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbwwa \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb34s \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbyia \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbze8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbqbd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbfab \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbgvv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbpj8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbuyj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbbg9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbk2k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbxsp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbti6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbxae \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbf6p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbnah \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb7z3t \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb7jar \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb7442 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb7ag8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb7kqp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb7s5z \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb72y6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb77ut \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb7rhg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb7ae6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbj7f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbwrp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gba76 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb89a \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gba7k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbhuw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb6cs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbp3u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbnxz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gby2i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb7ndp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb748f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb77w9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb79zr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb7cnv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb7dru \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb7n2q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb7e4g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb7aai \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb7vcs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=3gbxhq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=3gbqhd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=3gbe2k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=3gbzvh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=3gbaji \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=3gb8iy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=3gbh7x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=3gb4qd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=3gbgh7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=3gbdmp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5gbmtw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5gbjwv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5gb2pt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5gb85b \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5gbyq6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5gbzk2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5gbmik \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5gbnef \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5gbd26 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5gbqes \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10gb6f2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10gbzx6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10gbjrq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10gbc5p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10gbvjv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10gb4xw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10gbdcm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10gb53n \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10gbekx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10gbiv2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbyac \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbxc2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbgd2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbeyh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbyn3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbepe \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbiyr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb7x9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb9qj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbvig \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=love \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=wumi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbgy5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb4jt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbcn7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbab6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbna2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbqkq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbw6e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbs5k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbcx9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbcac \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbe6q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbu3z \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb4dr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbwdx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbg2h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbxvr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb966 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbjh7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbba2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb55x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb285 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbup5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbzzj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbkcv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbr93 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbf4y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb8u9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbwpz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbsvx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbrk5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB7f8a \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB78ct \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB7yf5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB7wxx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB72vd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB73dh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB78jt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB7pb8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB7sh7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB72n6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB7ckz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB7g5m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB7d4h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB7qgv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB7t7r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbzf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBx3p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6ji \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3hz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBi3s \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmv3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxth \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByfw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBauq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBq2w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2ya \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBd3d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxjm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBetk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6mp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5rn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvbd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjnz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7nq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbth \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbvd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBr7r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBehq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpdy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhqd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmsf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBt2e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBx5q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvg8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5x3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBa46 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwpd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3qs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBawk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBac8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByyn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkip \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmq9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBe28 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7j8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBu64 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhij \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9te \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBces \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrcw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBw7q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBymz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB634 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBem5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9qh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBreb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsr7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBg6v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkns \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgpg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBv8r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBum8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2aq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBj3y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB28d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7xj5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB72fd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7wgx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7igy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7avw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7mkn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7zv6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7ijn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7nqf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7tyb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7xe3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7a9y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7sfh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7xbm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7y6z \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7y7a \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7ef7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7daj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB79mw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7gaz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7yx5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G76si \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7zj6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7djk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7tvy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7fmj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7dy8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7pbm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G76wm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7mgx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G742z \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7mjz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7tgb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7u23 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7xta \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7rtw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7p9e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7s9z \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G78pz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2G7phe \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gidm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gzxu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1g8et \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gqrn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gx63 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gt6e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gqg3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1g3uf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1g7pe \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gd5z \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1g2qk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gas6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gafj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gxcd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gnwk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1guq2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1g5gh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1ggpq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1g3hw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gwtp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1g7yw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1ghpt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gfpt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gqsy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gj9g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gmjs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gme9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1g4dv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1g3r2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gxg7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbcpz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbhuz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbeai \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbuah \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbkjw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb2b5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbf8c \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb8wk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbahi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb5fv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbdkz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbnhc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbes2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbg7s \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb8m4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb5y5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbevg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbgip \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbzzz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbs7w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbnqs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbn4t \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbh7z \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbfc7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb56j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbmf2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbrxy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb8q7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbjmz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbarz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbqud \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbvzk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbpv2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbdpd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbmdx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbwhu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbpgd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbnf4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb373 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbgcx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbp5d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbfps \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb7ds \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb8un \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gb6zd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2gbk2b \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB45x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbgk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBb9d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBz3d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcj3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByfi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBduj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6eg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB858 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5nx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8m8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBg2c \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBm2h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxk3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBeqd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBw9r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB52r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmyf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqt6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB4qz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB568 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBwsh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB8xm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBnvz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB7md \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBvvv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBv2a \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB9z8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB6kd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBwgt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBx44 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GB3eb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GB9c4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBn9g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBiva \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBwik \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GB52r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBzyc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBrjv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBfv6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GB5e3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBzph \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBtxb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBdni \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GB2sk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBpue \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBsp9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBkge \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBdn3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GB8ey \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GB276 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GBu7i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GBx9e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GBded \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GB4wt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GB7yb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GBh9m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GB52e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GB8w3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBM5yz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBM2ay \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBMn6n \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBMqqf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBMgdm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBMjkn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBMz2x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBMvha \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBMq2y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBMt2t \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBW76a \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBW9qu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBWa3m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBWdjh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBWin7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBWb6h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBWfiu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBWaf8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBW2bt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBWdp3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GB7kcf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GB7fsr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GB7z4v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GB7yb4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GB7ifw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GB7ma4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GB7t6m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GB77np \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GB7jsv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GB763h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBMfke \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBMh8m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBMxvz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBM366 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBM2rt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBMm9r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBMkqe \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBMcxg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBMg4w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=10GBM8e8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GBMiqk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GBMnxh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GBM5nz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GBMja7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GBMrqw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GBM4an \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GBMs9f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GBMwai \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GBMdwh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GBM2nc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GB7f3r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GB7s28 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GB7q9k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GB7kff \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GB7k29 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GB7n2p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GB7jrk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GB7fg3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GB7bic \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=20GB79jk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBNP3m8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBNPyxa \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBNPv49 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBNPyzm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBNPi5j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBNP7wc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBNPwef \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBNP9j6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBNP4qe \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=5GBNPxx2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=30GBNPkkw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=30GBNPftp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=30GBNPhn2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=30GBNPauf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=30GBNPgu2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=30GBNPwpu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=30GBNPgg7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=30GBNPvzj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=30GBNP2rg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=30GBNP7as \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgqs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=mywife \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=tv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=mayo \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrdc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4db \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB683 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpnu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBygf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpe7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7fm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxxs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpez \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBn7b \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8aj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBga6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxp3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBa72 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsq8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBirb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmpk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7da \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4c7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9zp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBai8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtsp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxgu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2v4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrwy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBc2c \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB58z \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8tr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4q8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8sq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBat7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8cs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB63m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBu9u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9n8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBf6w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhya \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBn5v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByny \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByae \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBw6b \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBreg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbwew \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbtp8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gba77 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb6xg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbeed \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbpbw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb7q4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbc5y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb962 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbffy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbdwm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbh5q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbrya \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb8id \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbg2m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbq7z \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbkf5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbkxc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb9sf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbpjd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb75n \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb839 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbi9t \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbg5n \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbz9a \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb3v8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbt87 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbpt7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbtz2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbraw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb87x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb7uu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbng8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbku8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbqq4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbrbd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbwnj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb4dh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbadk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbnbk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbgcb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbjbk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb53j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbnam \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbpsy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbj67 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbgta \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbcyh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbj7h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbtkr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbe8h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb37x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbvt5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbqqt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb43m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbvyd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbhd3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbdi7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb45t \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbm7u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbagn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb4r2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbp3y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbpgg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbw6u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb84e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbtwz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbaf4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb9vf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gby8r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb62x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbqhf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbjpq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbgy9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbkuj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb56g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb8xy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb74v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbj7q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb8n8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb8uu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbesu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbkqc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbc6m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbd9j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb8en \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb2b4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbw6c \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbbe9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbywr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbb24 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb5mp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb646 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb529 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb8je \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb63u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb7sc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb4wf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbi8w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbux4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbihq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbecy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb6nc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb4rg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbq8a \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbh84 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbs57 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbnh8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbc9s \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gbbw8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb5vc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1gb4iy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9p8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxyj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqpm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBk6s \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvww \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBw5h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7cu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBk2y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBm8g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBntg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2cr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzqw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2fg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9a6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvik \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBnq8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxx6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBuu2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBuwg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBg8b \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBn54 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmau \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBq7m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4y7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpuy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5m3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBebc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBknf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbpu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBx4f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgsq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBw6h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4dx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmyj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjrr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvmt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4vj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBiab \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2n2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbsh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBet9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsux \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBx8r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBm4c \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBs36 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBnv5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7hj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBq4f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBv24 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrpc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByw3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbav \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3qx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBiuv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB362 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBang \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsjp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmee \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBupb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtrt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBe8i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4ca \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfym \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBiz4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBk86 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBybm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBaur \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrja \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdtn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB62d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBj7c \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBk96 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkf5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBru8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjyx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmu5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBct6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7nz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBd57 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBym7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7se \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3tu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBaqg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBaea \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBggw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrue \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2r8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbjv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9rf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBte2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB77w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbf2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBx78 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvxv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBk5k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcn5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdy7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsn2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBnkm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxdj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4sm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmhy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmb2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB24u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmt2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBg9w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzp5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBb43 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcra \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBm52 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4si \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBm8f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBi6m \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBxc9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBypv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBpas \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB58i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB7j2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GB4iq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBppn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBf67 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBmsa \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=2GBfnh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=MINE \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBx4h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4ig \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtz4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBudu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB74z \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2xt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcd8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBh39 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3be \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsuh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdsx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBj67 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7xr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9zy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjfn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcxp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB75j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcm9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6ak \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB39i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBitb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjdg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvex \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBuvq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBukp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB549 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzwq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6ej \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbn2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqp7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3ht \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6um \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxma \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBj8g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB24y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvgi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhu6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8wf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzgb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBthq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBn4f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2ib \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBb5n \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8ej \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBd95 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkmm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvdp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8z4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB38f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbzj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcdw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBafc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrky \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6ee \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBuxq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6a7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcdc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBb4a \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmzm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcdh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjdm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkrv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfhy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBq88 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjhi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbhg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrhi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwg8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwmi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpq9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkxm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjhz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4g2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBz6y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdqr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBa86 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBb27 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhzw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhkg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBs5q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3qi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhch \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvan \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBt2t \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBi3v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxuu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2u3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBh9b \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBuyc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxyd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpgs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9ff \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfpm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBv6k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgmr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB23p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwum \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBty4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvjc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfim \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvvx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5tn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdmp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxqr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBts7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwwq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkvu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtzy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBenb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcyb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBi9e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5g6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6vt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6s3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBc6v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbtd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3uy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqr2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBt3b \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7a8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBs5w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB78f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBasi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbwz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcwv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxz4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgn3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqsi \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBuip \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBryu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5in \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5zp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBs9r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB58x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBj5g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3h7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBymy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9nr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBru7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtrc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvtb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxu4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2um \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8f3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBah7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjbx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9ya \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBau8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3gw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgwv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtkf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdxt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBuce \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4uh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9ed \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4q2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkfk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4h3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkag \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9bx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4qw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6si \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB44d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9x6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB45f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBw7u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvtq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpza \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbkr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9x3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhu2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB33f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqhs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqsb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBp2f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBq3q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBi54 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBks3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3yk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBu34 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4hy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8ci \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8a3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwu4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9vu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB24p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbbf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBg3b \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgmd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3kt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgm6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBs8v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB763 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBeq4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB36y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBa4i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBr8u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB68a \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6i5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBddr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsh5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjg9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3uv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcvn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBs24 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBncg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8ps \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgdf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBiwf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByy9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdp4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBnh7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBn4r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxke \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBd6c \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvur \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbf7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbmm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmt9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkig \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBr3e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBr8w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtk7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdee \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBx64 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2ry \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBity \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5wf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmeg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvhh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqz7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmci \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvf3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBj7p \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqbq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2np \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBafd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxkn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxzz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8rq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgdd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmg4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpin \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrix \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBky5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4je \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcai \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbzx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBek6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxed \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpa4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBytw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB54q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBn7g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBp4x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5c3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbf4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB69y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsrv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB48t \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmty \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB652 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBm9i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBt22 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBuwv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdyw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrks \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBv32 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrsr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzdz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBixz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2yq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzsk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBc3q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3g6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrr5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4ag \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4uc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBikq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7d2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtsz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbwq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2c4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBp2g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBg5a \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkuc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9qu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3d4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4sz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5vu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfze \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBt4v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgdn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB59f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmkd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkkf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwmt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8p5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwjc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbkz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfs8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBw7h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByhj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6ae \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBftr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBn9r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7ku \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9k2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBujq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBem3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtqt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBqzh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBm9w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB47h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8ni \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBs6d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsez \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtfy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBewm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmkp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBp3f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcei \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=xcvb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4dy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBu4k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4jh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2b8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB76w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByb6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhvd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsbe \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjjs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjfr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6kv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9vg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBz9i \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBnnq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBy3r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBub4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmwk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2p4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBc5x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3d8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB23v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2n8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsb5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBw3c \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmu7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBczq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBeez \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtvm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgvs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBc39 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB98v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB38x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBa6q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzrq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBp8f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8cu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3ya \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBi4r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBefz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdmv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5dw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB53u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8zb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdqb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhki \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBd3w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBck3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB394 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgzj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBn8f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBv9r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB859 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB32v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBr3x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBj9d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBiqf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmz9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBixr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBba3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2dw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBc2x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBb5h \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpbs \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbfq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsz7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzfc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBk7e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBk7j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfgn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBemz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdda \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsq9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdin \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrbv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9yy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfu5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpd9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5k4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBem7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwkv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7sf \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9qy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB679 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBm2w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsyz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB523 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzmg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdsz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB8gg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBj6f \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBu56 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6xn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcsg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpub \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBnw2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4vp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmz4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBy2y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjzy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdn8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBsmc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBnvm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBdb7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBfnh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBcym \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5n5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2jx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzq4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBt24 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhzx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBy9j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBg4d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBa8q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBejn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB84u \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBiqk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7pe \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBnti \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBz8b \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5it \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBm4x \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbqy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpa6 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBimk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB39g \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvm3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkgc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBinc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBnnk \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBa66 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBk99 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBv3v \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5sh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbb9 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBv5j \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkcw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBer4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvgg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6pq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBtqx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBps8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjj8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBirr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBa49 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgey \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBecu \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB62y \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBnni \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBepx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBabp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB3fm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBi86 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbv5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbuz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrtx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBec7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpn2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBttm \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBmcn \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgkc \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB84r \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBskd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBe77 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB7qr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBbft \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB2q4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBq36 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBrgy \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBd2e \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwdw \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwcr \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBwzb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBxyv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjpt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5f4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBnb7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBek3 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBu9w \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5ws \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBk8k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByz8 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBg75 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByq5 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBuwd \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9v2 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhsh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBznx \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB4nz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBvf7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgzp \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBj84 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBeda \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBkb4 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GByct \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBhkz \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBp3k \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBptj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBgbj \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBigb \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBp92 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB9xq \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB5bh \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBr6q \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBzjt \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBpph \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBa9d \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBjwg \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBv9s \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBw54 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GB6g7 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1GBx7t \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=zxcv \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
add customer=admin disabled=no ipv6-dns=:: shared-users=1 username=1234 \
    wireless-enc-algo=none wireless-enc-key="" wireless-psk=""
