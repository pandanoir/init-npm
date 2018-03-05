#!bin/bash
dest=${1:-dest}
. config.sh
wget https://github.com/$username/$repository_name/archive/$branch.zip
unzip $branch.zip
rm $branch.zip
mv $repository_name-$branch $dest
cd $dest
[ -f ./init.sh ] && . ./init.sh
