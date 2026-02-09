if [[ $# -eq 0 ]]; then
  echo "Usage: x prime-run <command> [args]"
  return 1
fi
__NV_PRIME_RENDER_OFFLOAD=1 \
__GLX_VENDOR_LIBRARY_NAME=nvidia \
__VK_LAYER_NV_optimus=NVIDIA_only \
"$@"
