#!/bin/sh

[ -z $1 ] && exit

cd $1

rm -rf *spikes.fits

declare -a wavs=(94 131 171 193 211)


for wav in "${wavs[@]}"; do
    mkdir $wav
    mv $(ls | grep -e \\.$wav\\.) $wav
    
done

# mv $(ls | grep -e \\.$wav\\.) $wav
