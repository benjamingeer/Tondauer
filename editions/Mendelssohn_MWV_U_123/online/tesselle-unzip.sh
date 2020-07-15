#!/usr/bin/env bash

# Unzips Tesselle Zip files.

zip_files=$(find tesselle -name '*.zip')

for zip_file in ${zip_files}
do
  zip_file_dir=$(dirname "${zip_file:?}")
  zip_file_basename=$(basename "${zip_file:?}" .zip)
  unzip -qq "${zip_file:?}" -d "${zip_file_dir:?}/${zip_file_basename:?}"
done
