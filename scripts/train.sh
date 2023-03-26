SUITE=$1
TASK=$2
VERSION=$3
HORIZON=$4
GPU=$5
SEED=$6

CUDA_VISIBLE_DEVICES=${GPU} python embodied/agents/director/train.py \
  --logdir ./logdir/${SUITE}/${TASK}/${VERSION}_horizon${HORIZON}/${SEED} \
  --configs ${SUITE} \
  --task ${TASK} \
  --seed ${SEED} \
  --env.seed ${SEED} \
  --imag_horizon 16