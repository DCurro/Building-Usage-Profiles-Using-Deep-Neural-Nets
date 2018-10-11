for i in $(seq 1 10); 
do 
	$CAFFE_DIR/build/tools/convert_imageset.bin -resize_height 256 -resize_width 256 $DATA_DIR $LIST_DIR/test_set_$i.txt  "$OUTPUT_DIR/test_${i}_lmdb";
	$CAFFE_DIR/build/tools/convert_imageset.bin -resize_height 256 -resize_width 256 $DATA_DIR $LIST_DIR/val_set_$i.txt   "$OUTPUT_DIR/val_${i}_lmdb"; 
   	$CAFFE_DIR/build/tools/convert_imageset.bin -resize_height 256 -resize_width 256 $DATA_DIR $LIST_DIR/train_set_$i.txt "$OUTPUT_DIR/train_${i}_lmdb"; 
done

#scp -r -P24 /scratch/d2curro/word_lmdbs d2curro@eng274-02:~/
