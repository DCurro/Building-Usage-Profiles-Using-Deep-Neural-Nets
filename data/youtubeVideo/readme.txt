download.list
	- an organized list of the videos that were downloaded and their URLs

video_and_images
	- a folder structure containing the videos, and their extracted salient frames
	- each leaf node in the following structure contains the original video 
	   as well as a folder containing the extracted salient frames, organized by class
	- structured as such: 
		+ root
			+ <major class folder 0>
				+ 0_clean
					+ <video name>
						+ <class 0>
						+ <class 1>
						+ ...
						+ <class N>
				+ 1_zooms
					+...
				+ 2_bad
					+...
			+ ...
			+ <major class folder N>