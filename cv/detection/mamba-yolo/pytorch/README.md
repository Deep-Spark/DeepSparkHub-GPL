# Mamba-YOLO
Official pytorch implementation of “Mamba-YOLO：SSMs-based for Object Detection”

![Python 3.11](https://img.shields.io/badge/python-3.11-g)
![pytorch 2.3.0](https://img.shields.io/badge/pytorch-2.3.0-blue.svg)
[![docs](https://img.shields.io/badge/docs-latest-blue)](README.md)

![](asserts/SOTACompare.png)

## Installation
``` shell
# pip install required packages

pip install seaborn thop timm einops
cd selective_scan && pip install . && cd ..
pip install -v -e .
```

## Training

```shell
python3 mbyolo_train.py --task train --data ultralytics/cfg/datasets/coco.yaml \
 --config ultralytics/cfg/models/mamba-yolo/Mamba-YOLO-T.yaml \
--amp  --project ./output_dir/mscoco --name mambayolo_n
```

## Acknowledgement

This repo is modified from open source real-time object detection codebase [Ultralytics](https://github.com/ultralytics/ultralytics). The selective-scan from [VMamba](https://github.com/MzeroMiko/VMamba).
