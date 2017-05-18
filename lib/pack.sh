
mkdir -p "${image_dir}${prefix}" "$(dirname "${image_dir}${metadata_file}")"
cd "${image_dir}${prefix}"
find . -depth -printf '%p\0' > "${image_dir}${metadata_file}"

rm -f "${package_file}"
tar caf "${package_file}" -C "${image_dir}${prefix}" \
  --no-recursion --null -T "${image_dir}${metadata_file}"
