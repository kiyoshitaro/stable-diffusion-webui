#!/bin/bash

EXTENSION_ROOT="./extensions"
FORCE_LOAD=$false

if [ ! -d "$EXTENSION_ROOT/deforum-for-automatic1111-webui" ] || [ $FORCE_LOAD ]; then
  rm -rf $EXTENSION_ROOT/deforum-for-automatic1111-webui
  git clone https://github.com/deforum-art/deforum-for-automatic1111-webui $EXTENSION_ROOT/deforum-for-automatic1111-webui
fi
if [ ! -d "$EXTENSION_ROOT/stable-diffusion-webui-images-browser" ] || [ $FORCE_LOAD ]; then
  rm -rf $EXTENSION_ROOT/stable-diffusion-webui-images-browser
  git clone https://github.com/AlUlkesh/stable-diffusion-webui-images-browser $EXTENSION_ROOT/stable-diffusion-webui-images-browser
fi
if [ ! -d "$EXTENSION_ROOT/stable-diffusion-webui-huggingface" ] || [ $FORCE_LOAD ]; then
  rm -rf $EXTENSION_ROOT/stable-diffusion-webui-huggingface
  git clone https://github.com/camenduru/stable-diffusion-webui-huggingface $EXTENSION_ROOT/stable-diffusion-webui-huggingface
fi
if [ ! -d "$EXTENSION_ROOT/sd-civitai-browser" ] || [ $FORCE_LOAD ]; then
  rm -rf $EXTENSION_ROOT/sd-civitai-browser
  git clone -b v2.0 https://github.com/camenduru/sd-civitai-browser $EXTENSION_ROOT/sd-civitai-browser
fi
if [ ! -d "$EXTENSION_ROOT/sd-webui-additional-networks" ] || [ $FORCE_LOAD ]; then
  rm -rf $EXTENSION_ROOT/sd-webui-additional-networks
  git clone https://github.com/kohya-ss/sd-webui-additional-networks $EXTENSION_ROOT/sd-webui-additional-networks
fi
if [ ! -d "$EXTENSION_ROOT/sd-webui-controlnet" ] || [ $FORCE_LOAD ]; then
  rm -rf $EXTENSION_ROOT/sd-webui-controlnet
  git clone https://github.com/Mikubill/sd-webui-controlnet $EXTENSION_ROOT/sd-webui-controlnet
fi
if [ ! -d "$EXTENSION_ROOT/openpose-editor" ] || [ $FORCE_LOAD ]; then
  rm -rf $EXTENSION_ROOT/openpose-editor
  git clone https://github.com/camenduru/openpose-editor $EXTENSION_ROOT/openpose-editor
fi
if [ ! -d "$EXTENSION_ROOT/sd-webui-tunnels" ] || [ $FORCE_LOAD ]; then
  rm -rf $EXTENSION_ROOT/sd-webui-tunnels
  git clone https://github.com/camenduru/sd-webui-tunnels $EXTENSION_ROOT/sd-webui-tunnels
fi
if [ ! -d "$EXTENSION_ROOT/sd-webui-ar" ] || [ $FORCE_LOAD ]; then
  rm -rf $EXTENSION_ROOT/sd-webui-ar
  git clone https://github.com/alemelis/sd-webui-ar $EXTENSION_ROOT/sd-webui-ar
fi

if [ ! -d "$EXTENSION_ROOT/sd-webui-supermerger" ] || [ $FORCE_LOAD ]; then
  rm -rf $EXTENSION_ROOT/sd-webui-supermerger
  git clone https://github.com/hako-mikan/sd-webui-supermerger $EXTENSION_ROOT/sd-webui-supermerger
fi


for EXT in $EXTENSION_ROOT/*; do
    if [[ -d $EXT/.github ]]; then
        rm -rf $EXT/.github
        echo "REMOVED $EXT/.github"
    fi
    if [[ -d $EXT/.git ]]; then
        rm -rf $EXT/.git
        echo "REMOVED $EXT/.git"
    fi
done


pip install git+https://github.com/openai/CLIP.git@d50d76daa670286dd6cacf3bcd80b5e4823fc8e1 --prefer-binary
pip install git+https://github.com/mlfoundations/open_clip.git@bb6e834e9c70d9c27d0dc3ecedeebeaeb1ffad6b --prefer-binary
pip install -U -I --no-deps xformers==0.0.16rc425 --prefer-binary
git clone "https://github.com/Stability-AI/stablediffusion.git" "repositories\stable-diffusion-stability-ai"
# git -C "repositories\stable-diffusion-stability-ai" rev-parse HEAD
# git -C "repositories\stable-diffusion-stability-ai" fetch
git clone "https://github.com/CompVis/taming-transformers.git" "repositories\taming-transformers"
git clone "https://github.com/crowsonkb/k-diffusion.git" "repositories\k-diffusion"
git clone "https://github.com/sczhou/CodeFormer.git" "repositories\CodeFormer"
git clone "https://github.com/salesforce/BLIP.git" "repositories\BLIP"
pip install -r repositories\CodeFormer\requirements.txt --prefer-binary
pip install -r requirements_versions.txt --prefer-binary

pip install cython
pip install datadotworld[pandas]
pip install cchardet

# Microsoft Visual C++ 14.0 or greater is required. Get it with "Microsoft C++ Build Tools": https://visualstudio.microsoft.com/visual-cpp-build-tools
# download un follow 