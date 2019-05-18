#!/bin/bash

path="/etc/openvpn/mullvad_$1.conf"

sudo openvpn --config $path