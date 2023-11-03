#!/bin/bash
export VERSION=v1.0.0
NEW_VERSION=$(echo $VERSION | awk -F. -v OFS=. 'NF==1{print ++$NF}; NF>1{$NF=sprintf("%0*d", length($NF), ($NF+1)); print}')
export VERSION=$NEW_VERSION
sed -i '/export VERSION=v1.0.0/d' version.sh