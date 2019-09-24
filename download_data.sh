#!/usr/bin/env bash

__DIR__="$(dirname "$(readlink -f ${BASH_SOURCE[0]})")" # directory of this script
mkdir -p "${__DIR__}/data"
cd "${__DIR__}/data"

assetsUrl='https://github.com/jbrownlee/Datasets/releases/download/Flickr8k'
curl -OL "${assetsUrl}/Flickr8k_Dataset.zip"
curl -OL "${assetsUrl}/Flickr8k_text.zip"

for zipfile in *zip; do
    newdir="${zipfile%.zip}"

    unzip "${zipfile}" -d "${newdir}"
    rm "${zipfile}"

    (
        cd "${newdir}"

        [ -d Flicker8k_Dataset ] && mv Flicker8k_Dataset/* . && rmdir Flicker8k_Dataset
        [ -d __MACOSX ] && rm -rf __MACOSX
    )
done

mkdir -p "${__DIR__}/outputs"
