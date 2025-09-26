export PYTORCH_DISABLE_VEC_KERNEL=1
export PT_USE_CUDNN_BATCHNORM_SPATIAL_PERSISTENT=1
cd ..
bash run_training.sh --data ./data/coco.yaml  --amp "$@"
cd -
