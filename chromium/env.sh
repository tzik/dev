
chromium_dir="$(realpath "$(dirname "${BASH_SOURCE:-$0}")")"
# abbrev_path[${chromium_dir}]="cr"

export CHROMIUM_BUILDTOOLS_PATH="${chromium_dir}/src/buildtools"

crdev() {
  if [ "$#" -eq 0 ]; then
    cd "${chromium_dir}/src"
    return 0
  fi

  local cmd="$1"
  shift
  if [ ! -x "${chromium_dir}/bin/${cmd}" ]; then
    echo "Command not found: ${cmd}"
    return 1
  fi
  "${chromium_dir}/bin/${cmd}" "$@"
}
