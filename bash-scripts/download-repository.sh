REPOSITORY_ROOT="./repositories"
FORCE_LOAD=$false

if [ ! -d "$REPOSITORY_ROOT/stable-diffusion-stability-ai" ] || [ $FORCE_LOAD ]; then
  rm -rf $REPOSITORY_ROOT/stable-diffusion-stability-ai
  git clone https://github.com/Stability-AI/stablediffusion.git $REPOSITORY_ROOT/stable-diffusion-stability-ai
fi
if [ ! -d "$REPOSITORY_ROOT/taming-transformers" ] || [ $FORCE_LOAD ]; then
  rm -rf $REPOSITORY_ROOT/taming-transformers
  git clone https://github.com/CompVis/taming-transformers.git $REPOSITORY_ROOT/taming-transformers
fi
if [ ! -d "$REPOSITORY_ROOT/k-diffusion" ] || [ $FORCE_LOAD ]; then
  rm -rf $REPOSITORY_ROOT/k-diffusion
  git clone https://github.com/crowsonkb/k-diffusion.git $REPOSITORY_ROOT/k-diffusion
fi
if [ ! -d "$REPOSITORY_ROOT/CodeFormer" ] || [ $FORCE_LOAD ]; then
  rm -rf $REPOSITORY_ROOT/CodeFormer
  git clone https://github.com/sczhou/CodeFormer.git $REPOSITORY_ROOT/CodeFormer
fi
if [ ! -d "$REPOSITORY_ROOT/BLIP" ] || [ $FORCE_LOAD ]; then
  rm -rf $REPOSITORY_ROOT/BLIP
  git clone https://github.com/salesforce/BLIP.git $REPOSITORY_ROOT/BLIP
fi

# pip install git+https://github.com/openai/CLIP.git@d50d76daa670286dd6cacf3bcd80b5e4823fc8e1 --prefer-binary
# pip install git+https://github.com/mlfoundations/open_clip.git@bb6e834e9c70d9c27d0dc3ecedeebeaeb1ffad6b --prefer-binary
# pip install -U -I --no-deps xformers==0.0.16rc425 --prefer-binary
# pip install -r repositories\CodeFormer\requirements.txt --prefer-binary
# pip install -r requirements_versions.txt --prefer-binary


# pip install cython
# pip install datadotworld[pandas]
# pip install cchardet

# pip install --force-reinstall --no-deps numpy==1.23.5

# # Microsoft Visual C++ 14.0 or greater is required. Get it with "Microsoft C++ Build Tools": https://visualstudio.microsoft.com/visual-cpp-build-tools
# # download un run 
# # .\vs_buildtools.exe --norestart --passive --downloadThenInstall --includeRecommended --add Microsoft.VisualStudio.Workload.NativeDesktop --add Microsoft.VisualStudio.Workload.VCTools --add Microsoft.VisualStudio.Workload.MSBuildTools

# pip install setuptools==58.2.0