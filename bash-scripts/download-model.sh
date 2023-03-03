
#!/bin/bash

EXTENSION_ROOT="./extensions"

aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_canny-fp16.safetensors -d $EXTENSION_ROOT/sd-webui-controlnet/models -o control_canny-fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_depth-fp16.safetensors -d $EXTENSION_ROOT/sd-webui-controlnet/models -o control_depth-fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_hed-fp16.safetensors -d $EXTENSION_ROOT/sd-webui-controlnet/models -o control_hed-fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_mlsd-fp16.safetensors -d $EXTENSION_ROOT/sd-webui-controlnet/models -o control_mlsd-fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_normal-fp16.safetensors -d $EXTENSION_ROOT/sd-webui-controlnet/models -o control_normal-fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_openpose-fp16.safetensors -d $EXTENSION_ROOT/sd-webui-controlnet/models -o control_openpose-fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_scribble-fp16.safetensors -d $EXTENSION_ROOT/sd-webui-controlnet/models -o control_scribble-fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_seg-fp16.safetensors -d $EXTENSION_ROOT/sd-webui-controlnet/models -o control_seg-fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet/resolve/main/hand_pose_model.pth -d $EXTENSION_ROOT/sd-webui-controlnet/annotator/openpose -o hand_pose_model.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet/resolve/main/body_pose_model.pth -d $EXTENSION_ROOT/sd-webui-controlnet/annotator/openpose -o body_pose_model.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet/resolve/main/dpt_hybrid-midas-501f0c75.pt -d $EXTENSION_ROOT/sd-webui-controlnet/annotator/midas -o dpt_hybrid-midas-501f0c75.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet/resolve/main/mlsd_large_512_fp32.pth -d $EXTENSION_ROOT/sd-webui-controlnet/annotator/mlsd -o mlsd_large_512_fp32.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet/resolve/main/mlsd_tiny_512_fp32.pth -d $EXTENSION_ROOT/sd-webui-controlnet/annotator/mlsd -o mlsd_tiny_512_fp32.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet/resolve/main/network-bsds500.pth -d $EXTENSION_ROOT/sd-webui-controlnet/annotator/hed -o network-bsds500.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet/resolve/main/upernet_global_small.pth -d $EXTENSION_ROOT/sd-webui-controlnet/annotator/uniformer -o upernet_global_small.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.ckpt -d $EXTENSION_ROOT/models/Stable-diffusion -o VAE84.vae.pt
