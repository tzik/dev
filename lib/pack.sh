
mkdir -p "${image_dir}${prefix}" "$(dirname "${image_dir}${metadata_file}")"
cd "${image_dir}${prefix}"
find . -depth -print0 > "${image_dir}${metadata_file}"

rpath_fix() {
  local target="$1"
  if [ ! -d "${target}" ]; then
    return 0
  fi

  find "${target}" -type f -print0 | \
    while read -d $'\0' i; do
      if ! patchelf --print-rpath "$i" > /dev/null 2>&1; then
        continue
      fi

      patchelf --set-rpath '$ORIGIN/../lib' "$i"
    done
}

if which patchelf > /dev/null 2>&1; then
  rpath_fix "${image_dir}${prefix}/bin"
  rpath_fix "${image_dir}${prefix}/libexec"
fi

rm -f "${package_file}"
tar caf "${package_file}" -C "${image_dir}${prefix}" \
  --no-recursion --null -T "${image_dir}${metadata_file}"
