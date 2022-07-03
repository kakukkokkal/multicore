#!/bin/bash
for i in bfa cataclysm legion pandaria rolling wotlk
do
  pushd $i
  bash build.sh
  popd
done