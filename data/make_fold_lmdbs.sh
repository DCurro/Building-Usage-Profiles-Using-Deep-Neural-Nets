for i in $(seq 2 2); 
do 
	~/repos/caffe/build/tools/convert_imageset.bin -resize_height 256 -resize_width 256 /opt/home/d2curro/caffe_scripts/deepTutorial/data/ /nfs/d2curro/se-dl/9-fold-lists/test_set_$i.txt "/nfs/d2curro/se-dl/9-fold/test_${i}_lmdb";
	#~/repos/caffe/build/tools/convert_imageset.bin -resize_height 256 -resize_width 256 /opt/home/d2curro/caffe_scripts/deepTutorial/data/ val_set_$i.txt "/scratch/d2curro/word_lmdbs/val_${i}_lmdb"; 
   	#~/repos/caffe/build/tools/convert_imageset.bin -resize_height 256 -resize_width 256 /opt/home/d2curro/caffe_scripts/deepTutorial/data/ train_set_$i.txt "/scratch/d2curro/word_lmdbs/train_${i}_lmdb"; 
done

#scp -r -P24 /scratch/d2curro/word_lmdbs d2curro@eng274-02:~/
