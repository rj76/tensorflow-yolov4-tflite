#!/bin/bash

pip install -r /src/requirements.txt

cd /src

python save_model.py --weights yolo-obj_last.weights --output yolov4-416 --input_size 416 --tiny --model yolov4 --framework tflite
python convert_tflite.py --weights yolov4-416 --output yolov4-416-int8.tflite
