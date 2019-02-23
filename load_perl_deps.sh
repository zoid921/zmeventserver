#!/bin/bash
set -e 
set -x

apt -y install \
  libcrypt-mysql-perl \
  libmodule-build-perl \
  libyaml-perl \
  make \
  libjson-perl

perl -MCPAN -e "install Crypt::MySQL"
perl -MCPAN -e "install Net::WebSocket::Server"
perl -MCPAN -e "install Config::IniFiles"
perl -MCPAN -e "install LWP::Protocol::https"
perl -MCPAN -e "install Net::MQTT::Simple"
perl -MCPAN -e "install Net::MQTT::Simple::Auth"
