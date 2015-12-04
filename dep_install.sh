#!/bin/bash

sag="apt-get install"

apt-get update

# Dependencje
$sag libxcb-xkb-dev
$sag libxcb-util0-dev
$sag libxcb-icccm4-dev
$sag libxcb-ewmh-dev
# Instalacja
git clone https://github.com/krypt-n/bar
cd bar
make
cp lemonbar /usr/bin/

# Fonty
$sag fonts-inconsolata
$sag fonts-font-awesome

# Skrypty
cp ./weather /usr/bin

