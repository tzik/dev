base_dir="$(realpath "$(dirname "${BASH_SOURCE:-$0}")")"
path=("${base_dir}/out/bin"(N) "${path[@]}")
pkg_config_path+=("${base_dir}/out/pkgconfig"(N))
ld_run_path+=("${base_dir}/out/lib")
