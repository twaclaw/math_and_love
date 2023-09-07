#!/bin/bash

git clone https://github.com/youngsoul/hotdog-not-hotdog-dataset data
DATAPATH=data/train/hot_dog
DEST=black_and_white
mkdir -p $DATAPATH/$DEST

for image in $DATAPATH/*.jpg; do
	fn=$(basename $image jpg)
	convert -monochrome $image $DATAPATH/$DEST/${fn}_bw.jpg
done

exit 0
