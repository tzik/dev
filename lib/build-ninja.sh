
renice -n 20 -p "$$"
ionice -c 3 -p "$$"

export NINJA_STATUS="[%u/%r/%f] "
time ninja -C "${build_dir}"
