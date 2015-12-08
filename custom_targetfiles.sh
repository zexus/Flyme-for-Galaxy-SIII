#!/bin/bash

DATA_DIR=out/merged_target_files/
APP_DIR=overlay/DATA

echo "Packing ZhiYou APK to DATA"
cp -rf $APP_DIR/ $DATA_DIR/
