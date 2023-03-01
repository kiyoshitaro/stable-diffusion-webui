
# NOTE:
## Add extension: 
```sh 
git clone https://github.com/deforum-art/deforum-for-automatic1111-webui extensions/deforum-for-automatic1111-webui
git clone https://github.com/AlUlkesh/stable-diffusion-webui-images-browser extensions/stable-diffusion-webui-images-browser
git clone https://github.com/camenduru/stable-diffusion-webui-huggingface extensions/stable-diffusion-webui-huggingface
git clone -b v2.0 https://github.com/camenduru/sd-civitai-browser extensions/sd-civitai-browser
git clone https://github.com/kohya-ss/sd-webui-additional-networks extensions/sd-webui-additional-networks
git clone https://github.com/Mikubill/sd-webui-controlnet extensions/sd-webui-controlnet
git clone https://github.com/camenduru/openpose-editor extensions/openpose-editor
git clone https://github.com/camenduru/sd-webui-tunnels extensions/sd-webui-tunnels

```
## Download model:

```sh
./download-model.sh
```

## Run
```sh
python launch.py --xformers --enable-insecure-extension-access --remotemoe --share
```


# Stable Diffusion web UI
https://github.com/camenduru/stable-diffusion-webui#stable-diffusion-web-ui