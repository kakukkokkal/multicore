#!/bin/bash
REPOS=$(git submodule| cut -d " " -f 3)
ROOT=$(pwd)
DBROOT=$(pwd)/../database
echo "List of databases for reference"
for repo in ${REPOS}; do
#  mkdir -p ${DBROOT}/${repo}
  pushd ${repo} >/dev/null
  url=$(git remote get-url origin)
  echo ${repo}
  gh release list | grep DB
  popd >/dev/null
done

pushd bfa/BfaCore-Reforged >/dev/null
release=$(gh release list | head -n1 |  awk '{ print $4 }')
echo "Download release ${release} for BfaCore"
gh release download ${release} -D ${DBROOT}/bfa/BfaCore-Reforged
popd >/dev/null

pushd cataclysm/trinitycore >/dev/null
release=$(gh release list | grep Latest | awk '{ print $4 }')
echo "Download release ${release} for Cataclysm TrinityCore"
gh release download ${release} -D ${DBROOT}/cataclysm/trinitycore
popd >/dev/null

pushd wotlk/trinitycore >/dev/null
release=$(gh release list | grep 335 | head -n1 | sed s/Latest//g | awk '{ print $3 }')
echo "Download release ${release} for Wotlk TrinityCore"
gh release download ${release}  -D ${DBROOT}/wotlk/trinitycore
popd >/dev/null
pushd rolling/trinitycore >/dev/null
release=$(gh release list | grep 92 | head -n1 | sed s/Latest//g | awk '{ print $3 }')
echo "Download release ${release} for rolling TrinityCore"
gh release download ${release}  -D ${DBROOT}/rolling/trinitycore
popd >/dev/null