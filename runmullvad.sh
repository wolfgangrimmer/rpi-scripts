#!/bin/bash

path="/etc/openvpn/mullvad_$1.conf"

cd /etc/openvpn
sudo openvpn --config $path