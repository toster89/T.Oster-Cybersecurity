#!/bin/bash

awk -v time="$2" -v ampm="$3" 'BEGIN {print "Roulette Dealer Working \n---------------------------"}''($0 ~ ("^"time)) && (tolower($2) == tolower(ampm)) {print $1,$2,$5,$6}' "$1"*
