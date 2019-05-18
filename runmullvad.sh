#!/bin/bash

country = $1

sudo openvpn --config /etc/openvpn/mullvad_$country.conf