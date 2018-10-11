for i in $(pwd)/*
do 
	for subfile in $i/positive/*
	do
		fbname=$(basename "$subfile"  | cut -d. -f1);
		echo $subfile >> "$fbname"_positive.txt;
	done

	for subfile in $i/negative/*
	do
		fbname=$(basename "$subfile"  | cut -d. -f1);
		echo $subfile >> "$fbname"_negative.txt;
	done
done
