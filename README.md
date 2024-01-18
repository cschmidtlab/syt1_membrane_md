# Syt-1 C2A and C2B membrane interaction MD

This repository contains the Jupyter notebooks used to generate the figures in the publication (Name and link to follow).
The jupyter notebooks are labelled in reference to the numbering of the paper figures.
Analyses were performed separately for C2A and C2B so there are two notebooks for every analysis step.

## How to run

### Get the data

* Download the simulation data from [Zenodo](https://zenodo.org/doi/10.5281/zenodo.10478555)
   * Uploaded xtc files are preprocessed and include one frame for every 1 ns simulation time. 
* Extract the zip folder in the same folder as this repo

### Run the code
* Create a new environment e.g. with conda by ```conda create --name syt1_md python=3.9 pip```
* Activate environment ```conda activate syt1_md```
* Install requirements from requirements.txt e.g. using pip by ```pip install -r requirements.txt```
* Start a notebook server and investigate the project ```jupyter notebook```
