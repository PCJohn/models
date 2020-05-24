DATA_DIR="mytestds"

mkdir "${DATA_DIR}/tf_proc"

python create_tf_record.py \
    --train_image_dir="${DATA_DIR}/train" \
    --val_image_dir="${DATA_DIR}/val" \
    --test_image_dir="${DATA_DIR}/test" \
    --train_annotations_file="${DATA_DIR}/annots/train.json" \
    --val_annotations_file="${DATA_DIR}/annots/val.json" \
    --output_dir="${DATA_DIR}/tf_proc"

