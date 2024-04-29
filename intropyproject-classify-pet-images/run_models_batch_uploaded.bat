@echo off
REM */AIPND-revision/intropyproject-classify-pet-images/run_models_batch_uploaded.bat
REM                                                                             
REM PROGRAMMER: Rajeshwari Pradhan
REM DATE CREATED: 09/11/2023
REM REVISED DATE:  - revised run_models_batch.sh to run on 
REM                            windows OS using bat and Anaconda Prompt 
REM PURPOSE: Runs all three models to test which provides 'best' solution on the Uploaded Images.
REM          Please note output from each run has been piped into a text file.
REM
REM Usage: run_models_batch_uploaded.bat  -- will run program from commandline on Window OS
REM 
@echo on
python check_images.py --dir uploaded_images/ --arch resnet  --dogfile dognames.txt > resnet_uploaded-images.txt
python check_images.py --dir uploaded_images/ --arch alexnet --dogfile dognames.txt > alexnet_uploaded-images.txt
python check_images.py --dir uploaded_images/ --arch vgg  --dogfile dognames.txt > vgg_uploaded-images.txt
