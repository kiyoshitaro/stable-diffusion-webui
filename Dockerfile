# Dockerfile v1.6

# https://gitlab.com/nvidia/container-images/cuda/-/blob/master/dist/11.7.1/ubuntu2204/devel/cudnn8/Dockerfile
# FROM nvidia/cuda:11.7.1-cudnn8-devel-ubuntu22.04
# https://gitlab.com/nvidia/container-images/cuda/-/blob/master/dist/dist11.7.1/ubuntu2204/base/Dockerfile
FROM nvidia/cuda:11.7.1-base-ubuntu22.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y libgl1 libglib2.0-0 wget git git-lfs python3-pip python-is-python3 && rm -rf /var/lib/apt/lists/*

RUN adduser --disabled-password --gecos '' user
RUN mkdir /content && chown -R user:user /content
WORKDIR /content
USER user
COPY --chown=user:user . .

RUN pip3 install --upgrade pip

# HANDLE THIS 
# RUN pip install --pre xformers
# RUN pip install --pre triton
# RUN pip install numexpr

# RUN sed -i '$a fastapi==0.90.0' /content/requirements_versions.txt
# RUN sed -i -e '''/prepare_environment()/a\    os.system\(f\"""sed -i -e ''\"s/dict()))/dict())).cuda()/g\"'' /content/repositories/stable-diffusion-stability-ai/ldm/util.py""")''' /content/launch.py
# RUN sed -i -e 's/    start()/    #start()/g' /content/launch.py
# RUN python launch.py --skip-torch-cuda-test 
# if get xFormers can't load C++/CUDA extensions run this arg
#  --reinstall-xformers --reinstall-torch
# https://github.com/facebookresearch/xformers/issues/664#issuecomment-1459986536





# NO NEED TO RUN 
# ADD --chown=user https://raw.githubusercontent.com/camenduru/stable-diffusion-webui-scripts/main/run_n_times.py /content/stable-diffusion-webui/scripts/run_n_times.py
# RUN git clone https://github.com/camenduru/deforum-for-automatic1111-webui /content/stable-diffusion-webui/extensions/deforum-for-automatic1111-webui
# RUN git clone https://github.com/yfszzx/stable-diffusion-webui-images-browser /content/stable-diffusion-webui/extensions/stable-diffusion-webui-images-browser
# RUN git clone https://github.com/camenduru/stable-diffusion-webui-huggingface /content/stable-diffusion-webui/extensions/stable-diffusion-webui-huggingface
# RUN git clone https://github.com/camenduru/sd-civitai-browser /content/stable-diffusion-webui/extensions/sd-civitai-browser
# RUN git clone https://github.com/camenduru/sd-webui-additional-networks /content/stable-diffusion-webui/extensions/sd-webui-additional-networks
# ADD --chown=user https://huggingface.co/ckpt/anything-v4.5-vae-swapped/resolve/main/anything-v4.5-vae-swapped.safetensors /content/stable-diffusion-webui/models/Stable-diffusion/anything-v4.5-vae-swapped.safetensors
# EXPOSE 7860
# CMD cd /content/stable-diffusion-webui && python webui.py --xformers --listen --enable-insecure-extension-access --gradio-queue
