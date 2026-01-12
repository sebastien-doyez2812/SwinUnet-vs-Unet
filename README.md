# UNet vs Swin-UNet — Semantic Segmentation on Oxford Pets
## Project Overview
 This project aims to compare the performance of two semantic segmentation architectures — UNet and Swin-UNet — on the Oxford-IIIT Pet Dataset, focusing on binary segmentation of animals (cat/dog) versus background.

The objective is both experimental and educational: understanding how a classical CNN-based architecture compares to a Transformer-based architecture on a medium-sized, real-world dataset.This project aims to compare the performance of two semantic segmentation architectures — UNet and Swin-UNet — on the Oxford-IIIT Pet Dataset, focusing on binary segmentation of animals (cat/dog) versus background.

The objective is both experimental and educational: understanding how a classical CNN-based architecture compares to a Transformer-based architecture on a medium-sized, real-world dataset.


## Objectives

* Implement UNet and Swin-UNet from scratch in PyTorch
* Train both models under identical conditions
* Evaluate and compare performance using standard segmentation metrics
* Analyze qualitative results (visual predictions)
## Dataset:

Images: Cats and dogs of various breeds
Annotations: Pixel-wise segmentation masks
Task: Binary semantic segmentation
* 1: Animal (cat or dog)
* 0: Background

Official dataset page: https://www.robots.ox.ac.uk/~vgg/data/pets/


## Model

* UNet:

_ Encoder–decoder CNN architecture

_ Skip connections between encoder and decoder

_ Strong baseline for medical and general segmentation tasks

* Swin-UNet

_ Transformer-based architecture using Swin Transformer blocks

_ Hierarchical representation with shifted windows

_ Better global context modeling compared to CNNs
## Training Setup:

Framework: PyTorch

Loss function: Cross-Entropy Loss

Optimizer: Adam

Batch size: configurable

Device: GPU (CUDA) if available

Input size: resized images at 256×256 (small because I have a small GPU Geforce 3070 on my computer))

Both models are trained using the same data split, augmentations, and hyperparameters to ensure a fair comparison.
## Evaluation metrics

The following metrics are computed on the validation/test set:

* Precision
* Recall
* F1-score
* Intersection over Union (IoU)

Metrics are reported per class (animal) and averaged over samples.
## Results:

| Model      | IoU (Animal) | F1-score | Precision | Recall |
|------------|--------------|----------|-----------|--------|
| UNet       | 0.842        | 0.914    | 0.921     | 0.907  |
| Swin-UNet  | 0.873        | 0.932    | 0.928     | 0.936  |

## Observations:

UNet converges faster and is easier to train

Swin-UNet captures more global context. 
Transformer-based models may require:

- More data

- Longer training

- More GPU memory
## How to reuse:

Run the docker compose:
`docker-compose up --build`


Jupyter server run on http://127.0.0.1:8888/


## Author

Sébastien Doyez
AI Engineer — Computer Vision, Robotics & Deep Learning

This project is released for educational and research purposes.
