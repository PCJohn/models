JOB_DIR="mytestds"
MODEL_NAME="model"
PIPELINE_CONFIG_PATH="${JOB_DIR}/models/ssd_mobilenet_v2_coco.config"
MODEL_DIR="${JOB_DIR}/models"
NUM_TRAIN_STEPS=100
SAMPLE_1_OF_N_EVAL_EXAMPLES=1

mkdir "${MODEL_DIR}"

python ../object_detection/train.py \
    --pipeline_config_path=${PIPELINE_CONFIG_PATH} \
    --train_dir=${MODEL_DIR} \
    --num_train_steps=${NUM_TRAIN_STEPS} \
    --sample_1_of_n_eval_examples=$SAMPLE_1_OF_N_EVAL_EXAMPLES \


