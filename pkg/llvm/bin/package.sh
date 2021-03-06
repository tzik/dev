set -eu
cd "$(dirname "${BASH_SOURCE}")/.."

base_dir="${PWD}"
toolchain_dir="$(realpath -s "${base_dir}/../..")"

src_dir="${base_dir}/src"

bootstrap_prefix="${base_dir}/build/bootstrap/prefix"
if [ -n "${bootstrap:-}" ]; then
  build_dir="${base_dir}/build/bootstrap/build"
  image_dir="${base_dir}/build/bootstrap/image"
  prefix="${bootstrap_prefix}"
else
  build_dir="${base_dir}/build"
  image_dir="${base_dir}/image"
  prefix="${toolchain_dir}/out/usr"
fi

package_name="$(basename "${base_dir}")"
package_file="${base_dir}/${package_name}.tar"
metadata_file="${prefix}/packages/${package_name}"

mkdir -p "${build_dir}" "${image_dir}"
