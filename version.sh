#!/bin/bash
NEW_VERSION=$(cat version.txt | awk -F. -v OFS=. 'NF==1{print ++$NF}; NF>1{$NF=sprintf("%0*d", length($NF), ($NF+1)); print}')
echo $NEW_VERSION > version.txt
