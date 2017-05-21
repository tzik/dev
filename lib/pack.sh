
mkdir -p "${image_dir}${prefix}" "$(dirname "${image_dir}${metadata_file}")"
cd "${image_dir}${prefix}"
find . -depth -print0 > "${image_dir}${metadata_file}"

if which patchelf > /dev/null 2>&1; then
  find "${image_dir}${prefix}/bin" -type f -print0 | \
    while read -d $'\0' i; do
      if ! patchelf --print-rpath "$i" > /dev/null 2>&1; then
         continue
      fi

      patchelf --set-rpath '$ORIGIN/../lib' "$i"
    done
fi

rm -f "${package_file}"
tar caf "${package_file}" -C "${image_dir}${prefix}" \
  --no-recursion --null -T "${image_dir}${metadata_file}"
