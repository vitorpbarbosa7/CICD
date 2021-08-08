## Install Jenkins on Ubuntu
- You can face a problem if you do not have openjdk 8, install it and configure to be your java version instead of, e.g. java 11. 

## It's good to list the jobs necessary, for example:
- Job 1 : Pull the github repository to the jenkins server to run every step
- Job 2: Another job, seems to be exactly executing the pipeline from the model and training: Automatically start the machine learning algorithm application, trian the model and give prediction accuracy. Check if the model accuracy is less than 80 %.
