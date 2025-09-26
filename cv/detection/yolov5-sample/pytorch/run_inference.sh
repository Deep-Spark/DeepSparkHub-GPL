#!/bin/bash
#This is the script to run inference on Bi or Nv and use single GPU.
#Some config files have to be modified if need to change the inference parameters.

EXIT_STATUS=0
check_status()
{
    if ((${PIPESTATUS[0]} != 0)); then
        EXIT_STATUS=1
    fi
}

python3 test.py --task val --data data/coco128.yaml --weights weights/yolov5s.pt 2>&1 | tee inferencelog.log; check_status
exit ${EXIT_STATUS}

