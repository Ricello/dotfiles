#!/bin/bash

sag="apt-get install"

apt-get update

# Dependencje
$sag libxcb-xkb-dev
$sag libxcb-util0-dev
$sag libxcb-icccm4-dev
$sag libxcb-ewmh-dev
$sag libx11-xcb-dev
$sag wmctrl

# xtitle
git clone https://github.com/baskerville/xtitle.git
cd xtitle
make
cp xtitle /usr/bin
rm -rf xtitle

# Powrót do master'a
cd ..

# lemonbar-xft
git clone https://github.com/krypt-n/bar
cd bar
make
cp lemonbar /usr/bin/
rm -rf bar

# Powrót do master'a
cd ..

# Fonty
$sag fonts-inconsolata
$sag fonts-font-awesome

# Skrypty
cp ./weather /usr/bin

