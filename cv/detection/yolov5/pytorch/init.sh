#!/bin/bash
# Copyright (c) 2023-2024, Shanghai Iluvatar CoreX Semiconductor Co., Ltd.
# All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License. You may obtain
# a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


pip3 install -r requirements.txt
mkdir datasets
cd datasets
wget -q http://files.deepspark.org.cn:880/deepspark/data/datasets/coco_yolov5.tar.gz
tar -zxf coco_yolov5.tar.gz
mv coco_yolov5 coco
cd ..


PY_VERSION=$(python3 -V 2>&1|awk '{print $2}'|awk -F '.' '{print $2}')
if [ "$PY_VERSION" == "10" ];
then
   
   pip3 install -r requirements.txt
   pip3 install matplotlib==3.8.2
   pip3 install numpy==1.26.4
   pip3 install pandas==2.0.0
else
   pip3 install -r requirements.txt
fi



wandb disabled
pip3 install pycocotools

