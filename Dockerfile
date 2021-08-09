# Reference docker image is jupyter/scipy-notebook
FROM jupyter/scipy-notebook 

# Criar diretorio ?
RUN mkdir my-model2
# Diretorio para criar meu container
ENV MODEL_DIR = /home/vpb/CICD/JenkinsHelloWorld
ENV MODEL_FILE_LDA = clf_lda.joblib
ENV MODEL_FILE_NN = clf_nn.joblib

# copying file from local to docker container
COPY requirements.txt ./requirements.txt
# Install requirements
RUN pip install -r requirements.txt

# Copy train and test files
COPY train.csv ./train.csv
COPY test.csv ./test.csv

# Copy .py Scripts
COPY train-lda.py ./train-lda.py
COPY train-lda.py ./train-nn.py
COPY train-auto-nn.py ./train-auto-nn.py