#!/bin/sh
mkdir -p ./pbr
cd ./pbr

# ispip BGP
wget --no-check-certificate -c -O CN.txt https://ispip.clang.cn/all_cn.txt

{
echo "/ip firewall address-list"

for net in $(cat CN.txt) ; do
  echo "add list=CN address=$net comment=ispip"
done

} > ../CN.rsc

cd ..
rm -rf ./pbr
