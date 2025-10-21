# Train Yolov5 in BI 

Train yolov5 in BI on the dataset of coco128.

## Requirements

The project rely on the packages as follows:

- base 
  - matplotlib>=3.2.2;
  - numpy>=1.18.5;
  - opencv-python>=4.1.2;
  - Pillow;
  - scipy>=1.4.1;
  - tqdm;
- logging
  - tensorboard>=2.4.1;
- plotting
  - seaborn>=0.11.0;
  - pandas;
- calculate *flops*
  - thop;

Intall these packages by

    $ bash build_bi_environment.sh

## Data Prepare

Extract the data(coco128.tgz) 

    $ tar -zxvf coco128.tgz

Modify the configuration file(data/coco128.yaml)

    $ vim data/coco128.yaml
    $ # path: the root of coco128 data
    $ # train: the relative path of train images
    $ # val: the relative path of valid images

## Training the detector

Train the yolov5 model as follows, the train log is saved in ./runs/train/exp

    $ cd yolov5
    $ python train.py --data ./data/coco128.yaml --batch-size 8 --cfg ./models/yolov5s.yaml

## Test the detector

Test the yolov5 model as follows, the result is saved in ./runs/detect:

    $ cd yolov5
    $ python detect.py --source ./data/images/bus.jpg --weight yolov5s.pt --img 640
    $ python detect.py --source ./data/images/zidane.jpg --weight yolov5s.pt --img 640
