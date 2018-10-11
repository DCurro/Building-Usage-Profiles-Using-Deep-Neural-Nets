# Building-Usage-Profiles-Using-Deep-Neural-Nets

<img src="https://github.com/DCurro/Building-Usage-Profiles-Using-Deep-Neural-Nets/blob/master/github_images/model/overview.png" width="600">

 The project was created to provide the code and data used for the https://arxiv.org/abs/1702.07424 project, presented at 39th International Conference on Software Engineering (ICSE).
 

 ## Abstract

 To improve software quality, one needs to build test scenarios resembling the usage of a software product in the field. This task is rendered challenging when a product's customer base is large and diverse. In this scenario, existing profiling approaches, such as operational profiling, are difficult to apply. In this work, we consider publicly available video tutorials of a product to profile usage. Our goal is to construct an automatic approach to extract information about user actions from instructional videos. To achieve this goal, we use a Deep Convolutional Neural Network (DCNN) to recognize user actions. Our pilot study shows that a DCNN trained to recognize user actions in video can classify five different actions in a collection of 236 publicly available Microsoft Word tutorial videos (published on YouTube). In our empirical evaluation we report a mean average precision of 94.42% across all actions. This study demonstrates the efficacy of DCNN-based methods for extracting software usage information from videos. Moreover, this approach may aid in other software engineering activities that require information about customer usage of a product.
 
 ## How it works

 A set of pre-defined states (classes) are determined for various versions of Microsoft word:
<img src="https://github.com/DCurro/Building-Usage-Profiles-Using-Deep-Neural-Nets/blob/master/github_images/model/define_class.png" width="600">
 
An AlexNet model is fine tuned to predict this set of classes.
 <img src="https://github.com/DCurro/Building-Usage-Profiles-Using-Deep-Neural-Nets/blob/master/github_images/model/network.png" width="600">
 
 Next, a set of sequences are defined:
<img src="https://github.com/DCurro/Building-Usage-Profiles-Using-Deep-Neural-Nets/blob/master/github_images/model/overview.png" width="600">
 
 Finally, using a set of regular expressions (per pre-defined sequence), the users action is determined:
 <img src=""https://github.com/DCurro/Building-Usage-Profiles-Using-Deep-Neural-Nets/blob/master/github_images/model/define_regex.png" width="600">
 
 <img src="https://github.com/DCurro/Building-Usage-Profiles-Using-Deep-Neural-Nets/blob/master/github_images/model/regex.png" width="600">
 
 ## Data
 
 All of the data collected for this project can be found at:
 https://zenodo.org/record/321921
 
 This zip file contains all of the original video, selected sequences, and AlexNet resized input images.
 
 The dataset is composed of videos for the give types of sequences. Each image is labeled in as one of the possible classes.
 
  ### More Examples
  
  <img src="https://github.com/DCurro/Building-Usage-Profiles-Using-Deep-Neural-Nets/blob/master/github_images/column_popup.png" width="600">
  <img src="https://github.com/DCurro/Building-Usage-Profiles-Using-Deep-Neural-Nets/blob/master/github_images/default_font.png" width="600">
  <img src="https://github.com/DCurro/Building-Usage-Profiles-Using-Deep-Neural-Nets/blob/master/github_images/page_number.png" width="600">
  
  ## Results
  
   <img src=""https://github.com/DCurro/Building-Usage-Profiles-Using-Deep-Neural-Nets/blob/master/github_images/results/image_predictions.png" width="600">
 
   <img src=""https://github.com/DCurro/Building-Usage-Profiles-Using-Deep-Neural-Nets/blob/master/github_images/results/sequence_preditions.png" width="600">
  
 
