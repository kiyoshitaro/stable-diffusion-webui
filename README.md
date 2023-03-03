
# NOTE:
## Add extension: 
```sh 
.bash-scripts/download-extension.sh

```
## Download model:

```sh
.bash-scripts/download-model.sh
```

## Prepare environment
```sh
wget http://launchpadlibrarian.net/367274644/libgoogle-perftools-dev_2.5-2.2ubuntu3_amd64.deb
wget https://launchpad.net/ubuntu/+source/google-perftools/2.5-2.2ubuntu3/+build/14795286/+files/google-perftools_2.5-2.2ubuntu3_all.deb
wget https://launchpad.net/ubuntu/+source/google-perftools/2.5-2.2ubuntu3/+build/14795286/+files/libtcmalloc-minimal4_2.5-2.2ubuntu3_amd64.deb
wget https://launchpad.net/ubuntu/+source/google-perftools/2.5-2.2ubuntu3/+build/14795286/+files/libgoogle-perftools4_2.5-2.2ubuntu3_amd64.deb
apt install -qq libunwind8-dev
dpkg -i *.deb
%env LD_PRELOAD=libtcmalloc.so
!rm *.deb

apt-get -y install -qq aria2
pip install -q --pre xformers
pip install -q --pre triton

```


## Run
```sh
python launch.py --share --xformers --enable-insecure-extension-access --theme dark --remotemoe --share
```


# Stable Diffusion web UI
https://github.com/camenduru/stable-diffusion-webui#stable-diffusion-web-ui