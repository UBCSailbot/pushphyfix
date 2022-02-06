#/bin/bash

if [ -z $1 ]; then
    echo call with target host to install bbbphyfix on
    exit 1
fi

#we need the  no-host-checking so it doesn't say "fingerprint doesnt match"

rsync -e "ssh -o StrictHostKeyChecking=no" -r assets/* debian@$1:/home/debian/phyfixassets/

ssh -o StrictHostKeyChecking=no debian@$1 "pushd phyfixassets; ./makeall.sh;  pushd bbbphyfix/; ./install.sh; sync; popd; popd"





