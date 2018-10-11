FILES_2007=raw/2007/*mp4

for f in $FILES_2007; 
do 
	outputFilePath=data/2007/$(basename $f .mp4)
	mkdir $outputFilePath
	base=$(basename $f .mp4)

	ffmpeg -i $f -vf fps=2 $outputFilePath/$base.%03d.png 
done

FILES_2010=raw/2010/*mp4

for f in $FILES_2010; 
do 
	outputFilePath=data/2010/$(basename $f .mp4)
	mkdir $outputFilePath
	base=$(basename $f .mp4)

	ffmpeg -i $f -vf fps=2 $outputFilePath/$base.%03d.png 
done

FILES_2013=raw/2013/*mp4

for f in $FILES_2013; 
do 
	outputFilePath=data/2013/$(basename $f .mp4)
	mkdir $outputFilePath
	base=$(basename $f .mp4)


	ffmpeg -i $f -vf fps=2 $outputFilePath/$base.%03d.png 
done
