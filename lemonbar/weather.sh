#!/bin/bash

# Get weather info
url="http://www.accuweather.com/pl/pl/biaystok/275110/weather-forecast/275110"

# Print weather info
wget -q -O- "$url" | awk -F\' '/acm_RecentLocationsCarousel\.push/{print "Białystok, "$12"°"}'| head -1
