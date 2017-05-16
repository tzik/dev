set -eu
cd "$(dirname "${BASH_SOURCE}")/.."

base_dir="${PWD}"
src_dir="${base_dir}/src"
llvm_dir="${src_dir}/llvm"

out_dir="${base_dir}/out"
build_dir="${base_dir}/build"
ccache_dir="${base_dir}/ccache"
image_dir="${base_dir}/image"
prefix="$(realpath -s "${base_dir}/../..")/out/usr"

package_name="$(basename "${base_dir}")"
package_file="${base_dir}/${package_name}.tar"
metadata_file="${prefix}/packages/${package_name}"

mkdir -p "${out_dir}" "${build_dir}" "${ccache_dir}" "${image_dir}"
