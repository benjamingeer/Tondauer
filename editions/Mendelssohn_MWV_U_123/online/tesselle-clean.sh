#!/usr/bin/env bash

# Deletes directories created by unzipping Tesselle Zip files.

zip_files=$(find tesselle -name '*.zip')

for zip_file in ${zip_files}
do
  zip_file_dir=$(dirname "${zip_file:?}")
  zip_file_basename=$(basename "${zip_file:?}" .zip)
  rm -rf "${zip_file_dir:?}/${zip_file_basename:?}"
done
