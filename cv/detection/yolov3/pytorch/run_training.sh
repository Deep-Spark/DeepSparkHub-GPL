#!/bin/bash
export PYTHONPATH=$PYTHONPATH:`pwd`

LOG_DIR="logs"
if [ ! -d "$LOG_DIR" ]; then
  mkdir -p ${LOG_DIR}
fi
DATE=`date +%Y%m%d%H%M%S`

# Run finetuning
python3 pytorchyolo/finetune.py \
    --pretrained_weights checkpoints/yolov3_voc_pretrain.pth \
    --second_stage_steps 200  "$@"

exit $?