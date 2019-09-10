# flickr8k

Image-captioning model using the Flickr8k dataset (8000 images and captions).

This repo contains a script to download and extract the data, and some `python`/`jupyter notebook` to train and test the model.

## `download_data.sh`

Downloads the data. Gives the following folder structure:

```
data/
├── Flickr8k_Dataset
│   ├── 1000268201_693b08cb0e.jpg
│   ├── ...
│   └── 997722733_0cb5439472.jpg
└── Flickr8k_text
    ├── CrowdFlowerAnnotations.txt
    ├── ExpertAnnotations.txt
    ├── Flickr_8k.devImages.txt
    ├── Flickr8k.lemma.token.txt
    ├── Flickr_8k.testImages.txt
    ├── Flickr8k.token.txt
    ├── Flickr_8k.trainImages.txt
    └── readme.txt
```

## Special Thanks

Thanks for [Jason Brownloee](https://github.com/jbrownlee) for making the dataset and some related code available as a github release [here](https://github.com/jbrownlee/Datasets/releases/tag/Flickr8k).
