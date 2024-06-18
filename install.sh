#! /bin/bash

pip install torch==2.3.0 torchvision==0.18.0 "numpy<2" && \
pip install plyfile tqdm opencv-python diffusers transformers scipy matplotlib accelerate rich joblib loguru pytorch_lightning kornia einops open_clip_torch tensorboard ipykernel git+https://github.com/facebookresearch/detectron2.git && \
pip3 install -U xformers --index-url https://download.pytorch.org/whl/cu121 && \
pip install "git+https://github.com/facebookresearch/pytorch3d.git@stable"


cd submodules/diff-gaussian-rasterization && \
python setup.py install && \
cd ../simple-knn && \
python setup.py install && \
cd ../diff-gaussian-rasterization-appr-surface && \
python setup.py install && \
cd ../QuadTreeAttention/QuadTreeAttention && \
python setup.py install && \
cd ../../fcclip/fcclip/modeling/pixel_decoder/ops && \
sh make.sh

python -m ipykernel install --user --name=cogs