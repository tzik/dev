
flags+=(
  "-GNinja"
  "-DCMAKE_BUILD_TYPE=Release"
  "-DCMAKE_INSTALL_PREFIX=${prefix}"
)

cd "${build_dir}"
cmake "${flags[@]}" "${cmake_dir}"

