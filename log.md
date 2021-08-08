# Log 1:
Sending build context to Docker daemon  6.489MB
Step 1/12 : FROM jupyter/scipy-notebook
latest: Pulling from jupyter/scipy-notebook
c549ccf8d472: Already exists 
f2fd91df5af3: Pull complete 
c7be18fa0127: Pull complete 
8ad1ccf8be6e: Pull complete 
27ed94f12538: Pull complete 
92e3134c5187: Pull complete 
8470c721240d: Pull complete 
8118115d9358: Pull complete 
06de358ba209: Pull complete 
1d689543e03c: Pull complete 
ccfb53173f0e: Pull complete 
d1b342108488: Pull complete 
2ae963668c1e: Pull complete 
64cd025df78c: Pull complete 
87161b2f4627: Pull complete 
4f4fb700ef54: Pull complete 
5ae87a0d7890: Pull complete 
9a9deec2bc35: Pull complete 
Digest: sha256:d2ccdce70558a1b2fd0eca8a166ec62c421abef94ba5b48829f940c5d8a34e20
Status: Downloaded newer image for jupyter/scipy-notebook:latest
 ---> f4ec47e6e103
Step 2/12 : RUN mkdir my-model
 ---> Running in 74963e09abbf
Removing intermediate container 74963e09abbf
 ---> 340799fa093a
Step 3/12 : ENV MODEL_DIR = /home/vpb/CICD
 ---> Running in 624f6459c1bf
Removing intermediate container 624f6459c1bf
 ---> bcca2b01cd41
Step 4/12 : ENV MODEL_FILE_LDA = clf_lda.joblib
 ---> Running in 8ba4677bad38
Removing intermediate container 8ba4677bad38
 ---> 7c72cc1c31ba
Step 5/12 : ENV MODEL_FILE_NN = clf_nn.joblib
 ---> Running in 68120721084d
Removing intermediate container 68120721084d
 ---> 793d4ac3e667
Step 6/12 : COPY requirements.txt ./requirements.txt
 ---> 8b5f458dbd05
Step 7/12 : RUN pip install -r requirements.txt
 ---> Running in 509433c451ad
Requirement already satisfied: joblib in /opt/conda/lib/python3.9/site-packages (from -r requirements.txt (line 1)) (1.0.1)
Removing intermediate container 509433c451ad
 ---> 5b53c28b1c64
Step 8/12 : COPY train.csv ./train.csv
COPY failed: file not found in build context or excluded by .dockerignore: stat train.csv: file does not exist
