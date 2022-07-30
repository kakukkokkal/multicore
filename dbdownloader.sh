#!/bin/bash
REPOS=$(git submodule| cut -d " " -f 3)
ROOT=$(pwd)
DBROOT=$(pwd)/install
echo "List of databases for reference"
for repo in ${REPOS}; do
#  mkdir -p ${DBROOT}/${repo}
  pushd ${repo} >/dev/null
  url=$(git remote get-url origin)
  echo ${repo}
  gh release list | grep DB
  popd >/dev/null
done


pushd cataclysm/trinitycore-cata >/dev/null
release=$(gh release list | grep Latest | awk '{ print $4 }')
echo "Download release ${release} for Cataclysm TrinityCore"
rm  ${DBROOT}/trinitycore-cata/bin/*.sql
rm  ${DBROOT}/trinitycore-cata/bin/*.7z
gh release download ${release} --pattern "*.7z"  -D ${DBROOT}/trinitycore-cata/bin
pushd ${DBROOT}/trinitycore-cata/bin
for i in *.7z; do
  7z x ${i}
done
popd 
popd >/dev/null

pushd wotlk/trinitycore-wotlk >/dev/null
release=$(gh release list | grep 335 | head -n1 | sed s/Latest//g | awk '{ print $3 }')
echo "Download release ${release} for Wotlk TrinityCore"
rm  ${DBROOT}/trinitycore-wotlk/bin/*.sql
rm  ${DBROOT}/trinitycore-wotlk/bin/*.7z
gh release download ${release} --pattern "*.7z"  -D ${DBROOT}/trinitycore-wotlk/bin
pushd ${DBROOT}/trinitycore-wotlk/bin
for i in *.7z; do
  7z x ${i}
done
popd 

popd >/dev/null
pushd rolling/trinitycore >/dev/null
release=$(gh release list | grep 92 | head -n1 | sed s/Latest//g | awk '{ print $3 }')
echo "Download release ${release} for rolling TrinityCore"
rm  ${DBROOT}/trinitycore-rolling/bin/*.sql
rm  ${DBROOT}/trinitycore-rolling/bin/*.7z
gh release download ${release} --pattern "*.7z"  -D ${DBROOT}/trinitycore-rolling/bin
pushd ${DBROOT}/trinitycore-rolling/bin
for i in *.7z; do
  7z x ${i}
done
popd 
popd >/dev/null