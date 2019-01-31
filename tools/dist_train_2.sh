#!/usr/bin/env bash

PYTHON=${PYTHON:-"python3"}

$PYTHON -m torch.distributed.launch --nproc_per_node=$2 --master_addr 127.0.0.2 --master_port 29501 $(dirname "$0")/train.py $1 --launcher pytorch ${@:3}
