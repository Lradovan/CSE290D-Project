# CSE290D-Project

## Install Dependencies

### AnyDoor
Follow the installation instructions in the [AnyDoor repository](https://github.com/ali-vilab/AnyDoor).

### Libcom
Follow the installation instructions in the [Libcom Docs](https://libcom.readthedocs.io/en/latest/get_started.html).

### SAM
Follow the installation instructions in the [Segment Anything repository](https://github.com/facebookresearch/segment-anything). Install into the libcom conda environment.

## Create the Dataset

1. Open the notebook CreateDatasetP1.ipynb. Run all cells. This creates the first half of the dataset using the Libcom environment.
2. Switch to the anydoor conda environment, and run CreateDatasetP2.py. This will create the second half of the dataset.
3. Switch back to the libcom environment and run all cells in reconstruction.ipynb. This creates the final reconstructed portion of the dataset.


# Evaluation
The code to run the evaluator is in the evaluation.ipynb file.
