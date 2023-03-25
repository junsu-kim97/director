SUITE=$1
TASK=$2
VERSION=$3
GPU=$4
SEED=$5

CUDA_VISIBLE_DEVICES=${GPU} python embodied/agents/director/train.py \
  --logdir ~/logdir/${SUITE}/${TASK}/${VERSION}/${SEED} \
  --configs ${SUITE} \
  --task ${TASK} \
  --seed ${SEED} \
  --env.seed ${SEED}