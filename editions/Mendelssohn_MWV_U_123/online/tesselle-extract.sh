#!/usr/bin/env bash

# Extracts regions from Tesselle Zip files.

zip_files=$(find tesselle -name '*.zip')

for zip_file in ${zip_files}
do
  zip_file_basename=$(basename "${zip_file:?}" .zip)
  unzip -qq "${zip_file:?}" -d "tesselle/${zip_file_basename:?}"
  cp "tesselle/${zip_file_basename:?}/slideshow.json" "tesselle/${zip_file_basename:?}.json"
  rm -rf "tesselle/${zip_file_basename:?}"
done
