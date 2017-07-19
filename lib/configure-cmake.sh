
flags+=(
  "-GNinja"
  "-DCMAKE_BUILD_TYPE=Release"
  "-DCMAKE_INSTALL_PREFIX=${prefix}"
  "-DCMAKE_INSTALL_LIBDIR=lib"
)

cd "${build_dir}"
cmake "${flags[@]}" "${cmake_dir}"
