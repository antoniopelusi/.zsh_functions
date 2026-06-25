# Run a command using the NVIDIA GPU via PRIME offload
if [[ $# -eq 0 ]]; then
  printf "Usage: x prime-run <command> [args]\n"
  exit 1
fi
export __NV_PRIME_RENDER_OFFLOAD=1
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export __VK_LAYER_NV_optimus=NVIDIA_only
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/nvidia_icd.json
exec "$@"
