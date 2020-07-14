#!/usr/bin/env bash

zip_files=$(find tesselle -name '*.zip')

for zip_file in ${zip_files}
do
    unzip -qq ${zip_file} -d $(dirname ${zip_file})/$(basename ${zip_file} .zip)
done
