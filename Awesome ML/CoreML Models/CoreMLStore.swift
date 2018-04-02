//
//  CoreMLStore.swift
//  Awesome ML
//
//  Created by Eugene Bokhan on 3/13/18.
//  Copyright © 2018 Eugene Bokhan. All rights reserved.
//

import UIKit

public enum CoreMLType: String {
    case mobileOpenPose = "MobileOpenPose"
    case tinyYOLO = "Tiny YOLO"
    case ageNet = "AgeNet"
    case carRecognition = "CarRecognition"
    case cnnEmotions = "CNNEmotions"
    case flickrStyle = "FlickrStyle"
    case food101 = "Food101"
    case genderNet = "GenderNet"
    case googLeNetPlaces = "Google Net Places"
    case inceptionv3 = "Inceptionv3"
    case mnist = "MNIST"
    case mobileNet = "MobileNet"
    case nudity = "Nudity"
    case oxford102 = "Oxford102"
    case resnet50 = "Resnet50"
    case rn1015k500 = "RN1015k500"
    case vgg16 = "VGG16"
    case visualSentimentCNN = "VisualSentimentCNN"
}

class CoreMLStore: NSObject {
    
    static var imageProcessingModels: [CoreMLModel] = []
    
    static func fillImageProcessingModelsArray() {
        
        let mobileOpenPoseModel = CoreMLModel(name: "MobileOpenPose", coreMLType: .mobileOpenPose, author: "First real-time multi-person system to jointly detect human body keypoints ", modelDescription: "# Authors and Contributors\nOpenPose is authored by Gines Hidalgo, Zhe Cao, Tomas Simon, Shih-En Wei, Hanbyul Joo, and Yaser Sheikh. Currently, it is being maintained by Gines Hidalgo, Bikramjot Hanzra, and Yaadhav Raaj. The original CVPR 2017 repo includes Matlab and Python versions, as well as the training code. The body pose estimation work is based on the original ECCV 2016 demo.\nIn addition, OpenPose would not be possible without the CMU Panoptic Studio dataset.\n\n # Functionality \n\n **Real-time multi-person keypoint detection**.\n**15 or 18-keypoint body estimation**. **Running time invariant to number of detected people**.\n**2x21-keypoint hand** estimation. Currently, **running time depends** on **number of detected people**.\n**70-keypoint face** estimation. Currently, **running time depends** on **number of detected people**.\n**Input**: Image, video, webcam, and IP camera. Included C++ demos to add your custom input.\n**Output**: Basic image + keypoint display/saving (PNG, JPG, AVI, ...), keypoint saving (JSON, XML, YML, ...), and/or keypoints as array class.\n**Available**: command-line demo, C++ wrapper, and C++ API.\n**OS**: Ubuntu (14, 16), Windows (8, 10), Nvidia TX2, iOS.\n\n## License\nOpenPose is freely available for free non-commercial use, and may be redistributed under these conditions.", image: #imageLiteral(resourceName: "MobileOpenPose Cover"), inputWidth: 368, inputHeight: 368, remoteURL: URL(string: "https://github.com/eugenebokhan/iOS-OpenPose/raw/master/iOSOpenPose/iOSOpenPose/CoreML/MobileOpenPose.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1EycXgXuoMCBr9AEGapoBHpPVLV6dmQQF")!, license: "MIT")
        
        let tinyYOLOModel = CoreMLModel(name: "Tiny YOLO", coreMLType: .tinyYOLO, author: "Recognize what the objects are inside a given image and also where they are in the image.", modelDescription: "# Authors and Contributors \n The Tiny YOLO network from the paper \'YOLO9000: Better, Faster, Stronger\' (2016), arXiv:1612.08242. Original paper: Joseph Redmon, Ali Farhadi. \n # Functionality \n YOLO actually looks at the image just once (hence its name: You Only Look Once) but in a clever way. YOLO divides up the image into a grid of 13 by 13 cells. Each of these cells is responsible for predicting 5 bounding boxes. A bounding box describes the rectangle that encloses an object. YOLO also outputs a confidence score that tells us how certain it is that the predicted bounding box actually encloses some object. This score doesn’t say anything about what kind of object is in the box, just if the shape of the box is any good. For each bounding box, the cell also predicts a class. This works just like a classifier: it gives a probability distribution over all the possible classes. The confidence score for the bounding box and the class prediction are combined into one final score that tells us the probability that this bounding box contains a specific type of object. \n ## Input  \n A color (416x416) image. \n ## Output \n The 13x13 grid with the bounding box data. \n ## License \n Public Domain", image: #imageLiteral(resourceName: "TinyYOLO Cover"), inputWidth: 416, inputHeight: 416, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/TinyYOLO.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1n8pL6D2w7W7KkrxmaPycCXQtEOoKSIkO")!, license: "MIT")
        
        let ageNetModel = CoreMLModel(name: "AgeNet", coreMLType: .ageNet, author: "Age Classification using Convolutional Neural Networks", modelDescription: "# Authors and Contributors \n Gil Levi and Tal Hassner, Age and Gender Classification using Convolutional Neural Networks, IEEE Workshop on Analysis and Modeling of Faces and Gestures (AMFG), at the IEEE Conf. on Computer Vision and Pattern Recognition (CVPR), Boston, June 2015 \n # Abstract \n Automatic age and gender classification has become relevant to an increasing amount of applications, particularly since the rise of social platforms and social media. Nevertheless, performance of existing methods on real-world images is still significantly lacking, especially when compared to the tremendous leaps in performance recently reported for the related task of face recognition. In this paper we show that by learning representations through the use of deep-convolutional neural networks (CNN), a significant increase in performance can be obtained on these tasks. To this end, we propose a simple convolutional net architecture that can be used even when the amount of learning data is limited. We evaluate our method on the recent Adience benchmark for age and gender estimation and show it to dramatically outperform current state-of-the-art methods. \n ## Input  \n A color (227x227) image. \n ## Output \n The most likely age, for the given input. \n ## License \n Public Domain", image: #imageLiteral(resourceName: "AgeNet Cover"), inputWidth: 227, inputHeight: 227, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/AgeNet.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1XDb_jxPkKa0e6-GnQ3RDOx9q3CkdDMAh")!, license: "MIT")
        
        let carRecognitionModel = CoreMLModel(name: "CarRecognition", coreMLType: .carRecognition, author: "Predict the brand & model of a car.", modelDescription: "# Authors and Contributors \n This dataset is presented in our CVPR 2015 paper, Linjie Yang, Ping Luo, Chen Change Loy, Xiaoou Tang. A Large-Scale Car Dataset for Fine-Grained Categorization and \n  Verification, In Computer Vision and Pattern Recognition (CVPR), 2015. \n # Functionality \n The Comprehensive Cars (CompCars) dataset contains data from two scenarios, including images from web-nature and surveillance-nature. The web-nature data contains 163 car makes with 1,716 car models. There are a total of 136,726 images capturing the entire cars and 27,618 images capturing the car parts. The full car images are labeled with bounding boxes and viewpoints. Each car model is labeled with five attributes, including maximum speed, displacement, number of doors, number of seats, and type of car. The surveillance-nature data contains 50,000 car images captured in the front view. Please refer to our paper for the details. \n The train/test subsets of these tasks introduced in our paper are included in the dataset. Researchers are also welcome to utilize it for any other tasks such as image ranking, multi-task learning, and 3D reconstruction. \n ## Input  \n A color (224x224) image of a car. \n ## Output \n The most likely type of car, for the given input. \n ## License \n MIT", image: #imageLiteral(resourceName: "Car Recognition Cover"), inputWidth: 224, inputHeight: 224, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/CarRecognition.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1YUIS8ATJ_Kt1VHJitDZuPzr_Wn6IPzs6")!, license: "MIT")
        
        let cnnEmotionsModel = CoreMLModel(name: "CNNEmotions", coreMLType: .cnnEmotions, author: "Emotion Recognition in the Wild via Convolutional Neural Networks and Mapped Binary Patterns", modelDescription: "# Authors and Contributors \n Gil Levi and Tal Hassner, Emotion Recognition in the Wild via Convolutional Neural Networks and Mapped Binary Patterns, Proc. ACM International Conference on Multimodal Interaction (ICMI), Seattle, Nov. 2015 \n # Abstract \n We present a novel method for classifying emotions from static facial images. Our approach leverages on the recent success of Convolutional Neural Networks (CNN) on face recognition problems. Unlike the settings often assumed there, far less labeled data is typically available for training emotion classi cation systems. Our method is therefore designed with the goal of simplifying the problem domain by removing confounding factors from the input images, with an emphasis on image illumination variations. This, in an effort to reduce the amount of data required to e ectively train deep CNN models. To this end, we propose novel transformations of image intensities to 3D spaces, designed to be invariant to monotonic photometric transformations. These are applied to CASIA Webface images which are then used to train an ensemble of multiple architecture CNNs on multiple representations. Each model is then ne-tuned with limited emotion labeled training data to obtain nal classi cation models. Our method was tested on the Emotion Recognition in the Wild Challenge (EmotiW 2015), Static Facial Expression Recognition sub-challenge (SFEW) and shown to provide a substantial, 15.36% improvement over baseline results (40% gain in performance). \n ## Input  \n A color (227x227) image. \n ## Output \n The most likely age, for the given input. \n ## License \n Public Domain", image: #imageLiteral(resourceName: "CNNEmotions Cover"), inputWidth: 224, inputHeight: 224, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/CNNEmotions.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1ZbAt9NQf18SJ9PYx2S7lOQ0dsGtbwQLv")!, license: "MIT")
        
        let flickrStyleModel = CoreMLModel(name: "FlickrStyle", coreMLType: .flickrStyle, author: "Finetuning CaffeNet on Flickr Style", modelDescription: "# Authors and Contributors \n Sergey Karayev, Matthew Trentacoste, Helen Han, Aseem Agarwala,  Trevor Darrell, Aaron Hertzmann, Holger Winnemoeller, University of California, Berkeley, Adobe. \n # Abstract \n The style of an image plays a significant role in how it is viewed, but style has re- ceived little attention in computer vision research. We describe an approach to predicting style of images, and perform a thorough evaluation of different image features for these tasks. We find that features learned in a multi-layer network generally perform best – even when trained with object class (not style) labels. Our large-scale learning methods results in the best published performance on an existing dataset of aesthetic ratings and photographic style annotations. We present two novel datasets: 80K Flickr photographs annotated with 20 curated style labels, and 85K paintings annotated with 25 style/genre labels. Our approach shows excellent classification performance on both datasets. We use the learned classifiers to extend traditional tag-based image search to consider stylis- tic constraints, and demonstrate cross-dataset understanding of style. \n ## Input  \n A color (227x227) image. \n ## Output \n The most likely style of image, for the given input. \n ## License \n Public Domain", image: #imageLiteral(resourceName: "Flicr Style Cover"), inputWidth: 227, inputHeight: 227, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/FlickrStyle.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1X6F3laayxFEiadTd-pvNR6odWeWKZ0-6")!, license: "MIT")
        
        let food101Model = CoreMLModel(name: "Food101", coreMLType: .food101, author: "This model takes a picture of a food and predicts its name", modelDescription: "# Authors and Contributors \n Sergey Karayev, Matthew Trentacoste, Helen Han, Aseem Agarwala,  Trevor Darrell, Aaron Hertzmann, Holger Winnemoeller, University of California, Berkeley, Adobe. \n # Description \n UPMC Food-101 is a large multimodal dataset containing about 100,000 items of food recipes classified in 101 categories. This dataset was crawled from the web and each item consists of an image and the HTML webpage on which it was found. This dataset can be considered as a “twin dataset” of ETHZ Food-101. Indeed, they both share the same 101 categories and have approximately the same size. The categories of both UPMC Food-101 and ETHZ Food-101 are the 101 most popular categories from the food picture sharing website foodspotting.com. However, the images from ETHZ Food-101 are also taken from this website whereas UPMC Food-101's images have been crawled from Google Images searches of the category name followed by “recipe”. \n ## Input  \n A color (299x299) image. \n ## Output \n Label of predicted food. \n ## License \n Public Domain.", image: #imageLiteral(resourceName: "Food101 Cover"), inputWidth: 299, inputHeight: 299, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/Food101.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1DYpcEYTxKO7KJiWRwDe4KVIGvUxyVHpe")!, license: "MIT")
        
        let genderNetModel = CoreMLModel(name: "GenderNet", coreMLType: .genderNet, author: "Gil Levi and Tal Hassner", modelDescription: "Gender Classification using Convolutional Neural Networks.", image: #imageLiteral(resourceName: "GenderNet Cover"), inputWidth: 227, inputHeight: 227, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/GenderNet.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1A1KQcLWRphMsr09VqV-Ql6OWgEDsUZl-")!, license: "MIT")
        
        let googLeNetPlacesModel = CoreMLModel(name: "Google Net Places", coreMLType: .googLeNetPlaces, author: "Detects the scene of an image from 205 categories such as airport, bedroom, forest, coast etc.", modelDescription: "# Authors and Contributors \n B. Zhou, A. Lapedriza, J. Xiao, A. Torralba, and A. Oliva. \n # Description \n Scene recognition is one of the hallmark tasks of computer vision, allowing defining a context for object recognition. Here we introduce a new scene-centric database called Places, with 205 scene categories and 2.5 millions of images with a category label. Using convolutional neural network (CNN), we learn deep scene features for scene recognition tasks, and establish new state-of-the-art performances on scene-centric benchmarks.. \n ## Input  \n A color (224x224) image. \n ## Output \n Most likely scene label. \n ## License \n Public Domain.", image: #imageLiteral(resourceName: "GoogleNetPlaces Cover"), inputWidth: 224, inputHeight: 224, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/GoogLeNetPlaces.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1eR5Y2NmHELjaVPUt0M7M659D1GUD5y8g")!, license: "MIT")
        
        let inceptionv3Model = CoreMLModel(name: "Inceptionv3", coreMLType: .inceptionv3, author: "Detects the dominant objects present in an image from a set of 1000 categories such as trees, animals, food, vehicles, person etc. The top-5 error from the original publication is 5.6%.", modelDescription: "# Authors and Contributors \n Original Paper: Christian Szegedy, Vincent Vanhoucke, Sergey Ioffe, Jonathon Shlens, Zbigniew Wojna. \n # Description \n Convolutional networks are at the core of most state-of-the-art computer vision solutions for a wide variety of tasks. Since 2014 very deep convolutional networks started to become mainstream, yielding substantial gains in various benchmarks. Although increased model size and computational cost tend to translate to immediate quality gains for most tasks (as long as enough labeled data is provided for training), computational efficiency and low parameter count are still enabling factors for various use cases such as mobile vision and big-data scenarios. Here we explore ways to scale up networks in ways that aim at utilizing the added computation as efficiently as possible by suitably factorized convolutions and aggressive regularization. We benchmark our methods on the ILSVRC 2012 classification challenge validation set demonstrate substantial gains over the state of the art: 21.2% top-1 and 5.6% top-5 error for single frame evaluation using a network with a computational cost of 5 billion multiply-adds per inference and with using less than 25 million parameters. With an ensemble of 4 models and multi-crop evaluation, we report 3.5% top-5 error on the validation set (3.6% error on the test set) and 17.3% top-1 error on the validation set. \n ## Input  \n A color (299x299) image. \n ## Output \n Most likely image category. \n ## License \n Public Domain", image: #imageLiteral(resourceName: "Inception3 Cover"), inputWidth: 299, inputHeight: 299, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/Inceptionv3.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1JDplpgST9mTdGhVuQx-8Se8MP8VHXio_")!, license: "MIT")
        
        let mnistModel = CoreMLModel(name: "MNIST", coreMLType: .mnist, author: "Predicts a handwritten digit.", modelDescription: "# Authors and Contributors \n Author: Philipp Gabriel. \n # Description \n The MNIST database of handwritten digits, available from this page, has a training set of 60,000 examples, and a test set of 10,000 examples. It is a subset of a larger set available from NIST. The digits have been size-normalized and centered in a fixed-size image. It is a good database for people who want to try learning techniques and pattern recognition methods on real-world data while spending minimal efforts on preprocessing and formatting. \n ## Input  \n A greyscale (28x28) image. \n ## Output \n Most likely image category. \n ## License \n Public Domain.", image: #imageLiteral(resourceName: "MNIST Cover"), inputWidth: 28, inputHeight: 28, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/MNIST.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1F09FHXEEHVLbBvH8cL9d2BgutEK9K_MR")!, license: "MIT")
        
        let mobileNetModel = CoreMLModel(name: "MobileNet", coreMLType: .mobileNet, author: "The network from the paper 'MobileNets: Efficient Convolutional Neural Networks for Mobile Vision Applications', trained on the ImageNet dataset.", modelDescription: "# Authors and Contributors \n Authors and contibutors: The network from the paper \'MobileNets: Efficient Convolutional Neural Networks for Mobile Vision Applications\', trained on the ImageNet dataset. \n # Description \n MobileNets are based on a streamlined architecture that uses depth-wise separable convolutions to build light weight deep neural networks. We introduce two simple global hyper-parameters that efficiently trade off between latency and accuracy. These hyper-parameters allow the model builder to choose the right sized model for their application based on the constraints of the problem. We present extensive experiments on resource and accuracy tradeoffs and show strong performance compared to other popular models on ImageNet classification. We then demonstrate the effectiveness of MobileNets across a wide range of applications and use cases including object detection, finegrain classification, face attributes and large scale geo-localization. \n ## Input  \n A color (224x224) image. \n ## Output \n Most likely image category. \n ## License \n Public Domain.", image: #imageLiteral(resourceName: "MobileNet Cover"), inputWidth: 224, inputHeight: 224, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/MobileNet.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1cRBSU69LRPeY-5tzfsEIqCBPAoqyoZwr")!, license: "MIT")
        
        let nudityModel = CoreMLModel(name: "Nudity", coreMLType: .nudity, author: "Classifies an image either as NSFW (nude) or SFW (not nude).", modelDescription: "# Authors and Contributors \n Author: Philipp Gabriel. \n # Description \n Detecting offensive / adult images is an important problem which researchers have tackled for decades. With the evolution of computer vision and deep learning the algorithms have matured and we are now able to classify an image as not suitable for work with greater precision. Defining NSFW material is subjective and the task of identifying these images is non-trivial. Moreover, what may be objectionable in one context can be suitable in another. For this reason, the model we describe below focuses only on one type of NSFW content: pornographic images. The identification of NSFW sketches, cartoons, text, images of graphic violence, or other types of unsuitable content is not addressed with this model. Since images and user generated content dominate the internet today, filtering nudity and other not suitable for work images becomes an important problem. In this repository we opensource a Caffe deep neural network for preliminary filtering of NSFW images. \n ## Input  \n A color (224x224) image. \n ## Output \n NSFW or SFW. \n ## License \n Public Domain.", image: #imageLiteral(resourceName: "Nudity Cover"), inputWidth: 224, inputHeight: 224, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/Nudity.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1HeJhs6sjsguqDbbtn2Mvt8e7NW5Z7fVj")!, license: "BSD-2")
        
        let oxford102Model = CoreMLModel(name: "Oxford102", coreMLType: .oxford102, author: "Classifying images in the Oxford 102 flower dataset with CNNs", modelDescription: "# Authors and Contributors \n Author: Jimmie Goode. \n ## Input  \n A color (227x227) image. \n ## Output \n The most likely type of flower, for the given input. \n ## License \n Public Domain.", image: #imageLiteral(resourceName: "Oxford102 Cover"), inputWidth: 227, inputHeight: 227, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/Oxford102.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1pLNiwwj2vpi4uZ8zhDCJba9DMo8vlZjM")!, license: "MIT")
        
        let resnet50Model = CoreMLModel(name: "Resnet50", coreMLType: .resnet50, author: "Detects the dominant objects present in an image from a set of 1000 categories such as trees, animals, food, vehicles, person etc. The top-5 error from the original publication is 7.8%.", modelDescription: "# Authors and Contributors \n Authors and contibutors: Original Paper: Kaiming He and Xiangyu Zhang and Shaoqing Ren and Jian Sun. \n # Description \n Deeper neural networks are more difficult to train. We present a residual learning framework to ease the training of networks that are substantially deeper than those used previously. We explicitly reformulate the layers as learning residual functions with reference to the layer inputs, instead of learning unreferenced functions. We provide comprehensive empirical evidence showing that these residual networks are easier to optimize, and can gain accuracy from considerably increased depth. On the ImageNet dataset we evaluate residual nets with a depth of up to 152 layers---8x deeper than VGG nets but still having lower complexity. An ensemble of these residual nets achieves 3.57% error on the ImageNet test set. This result won the 1st place on the ILSVRC 2015 classification task. We also present analysis on CIFAR-10 with 100 and 1000 layers. The depth of representations is of central importance for many visual recognition tasks. Solely due to our extremely deep representations, we obtain a 28% relative improvement on the COCO object detection dataset. Deep residual nets are foundations of our submissions to ILSVRC & COCO 2015 competitions, where we also won the 1st places on the tasks of ImageNet detection, ImageNet localization, COCO detection, and COCO segmentation. \n ## Input  \n A color (224x224) image. \n ## Output \n Most likely image category. \n ## License \n Public Domain.", image: #imageLiteral(resourceName: "ResNet50 Cover"), inputWidth: 224, inputHeight: 224, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/Resnet50.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1LYQrOpiKEUpTvquFoHawLUmYEgS751CJ")!, license: "MIT")
        
        let visualSentimentCNNModel = CoreMLModel(name: "VisualSentimentCNN", coreMLType: .visualSentimentCNN, author: "Fine-tuning CNNs for Visual Sentiment Prediction.", modelDescription: "# Authors and Contributors \n Authors and contibutors: mage Processing Group - BarcelonaTECH - UPC. \n # Description \n Visual multimedia have become an inseparable part of our digital social lives, and they often capture moments tied with deep affections. Automated visual sentiment analysis tools can provide a means of extracting the rich feelings and latent dispositions embedded in these media. In this work, we explore how Convolutional Neural Networks (CNNs), a now de facto computational machine learning tool particularly in the area of Computer Vision, can be specifically applied to the task of visual sentiment prediction. We accomplish this through fine-tuning experiments using a state-of-the-art CNN and via rigorous architecture analysis, we present several modifications that lead to accuracy improvements over prior art on a dataset of images from a popular social media platform. We additionally present visualizations of local patterns that the network learned to associate with image sentiment for insight into how visual positivity (or negativity) is perceived by the model. \n ## Input  \n A color (227x227) image. \n ## Output \n Most likely image category. \n ## License \n Public Domain.", image: #imageLiteral(resourceName: "VisualSentimentCNN Cover"), inputWidth: 227, inputHeight: 227, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/VisualSentimentCNN.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1r1fV8KfpNhM6IcxRGdrm4fRdiWsmULS_")!, license: "MIT")
        
        let rn1015k500Model = CoreMLModel(name: "RN1015k500", coreMLType: .rn1015k500, author: "Jaeyoung Choi and Kevin Li", modelDescription: "Predict the location where a picture was taken.", image: #imageLiteral(resourceName: "RN1015k500 Cover"), inputWidth: 224, inputHeight: 224, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/RN1015k500.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=1H7XFfbrwMarY407DLVtYn9Kl-t0opxAy")!, license: "MIT")
        
        let vgg16Model = CoreMLModel(name: "VGG16", coreMLType: .vgg16, author: "Original Paper: Karen Simonyan & Andrew Zisserman. Keras Implementation: François Chollet", modelDescription: "Detects the dominant objects present in an image from a set of 1000 categories such as trees, animals, food, vehicles, person etc. The top-5 error from the original publication is 7.4%.", image: #imageLiteral(resourceName: "VGG16 Cover"), inputWidth: 224, inputHeight: 224, remoteURL: URL(string: "https://s3-us-west-2.amazonaws.com/coreml-models/VGG16.mlmodel")!, remoteZipURL: URL(string: "https://drive.google.com/uc?export=download&id=11RTPwPa01MaSryHCMpFZdeIfTad5j6YE")!, license: "Creative Commons Attribution 4.0 International(CC BY 4.0)")
        
        imageProcessingModels = [mobileOpenPoseModel, carRecognitionModel, tinyYOLOModel, visualSentimentCNNModel, googLeNetPlacesModel,oxford102Model, food101Model, resnet50Model, flickrStyleModel, mobileNetModel, nudityModel, inceptionv3Model, mnistModel, ageNetModel]
        
    }
    
    static func isModelDownloaded(coreMLModel: CoreMLModel?) -> Bool {
        guard let coreMLModel = coreMLModel else { return false }
        return FileManager.default.fileExists(atPath: coreMLModel.localCompiledURL.path)
    }

}