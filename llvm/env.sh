base_dir="$(realpath "$(dirname "${BASH_SOURCE:-$0}")")"
path=("${base_dir}/out/bin"(N) "${path[@]}")
cplus_include_path=("${base_dir}/out/include/c++"(N) "${cplus_include_path[@]}")
ld_run_path=("${base_dir}/out/lib"(N) "${ld_run_path[@]}")
