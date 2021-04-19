# gpt2-xl-training

To use:

1) Start a p4d.24xlarge instance on AWS EC2, with the Deep Learning Ubuntu base OS image and 200GB storage.
2) Clone this repo into the instance
3) Activate into the pre-configured environment with `source activate pytorch_latest_p37`
4) Install huggingface transformers with `pip3 install transformers`
5) Copy your corpus from local filesystem into the corpus folder
from local:
`scp -i path/to/ec2/key path/to/corpus.txt ubuntu@ip.address:gpt2-xl-training/corpus/corpus.txt`
4) Run the train.sh script with the first argument being the path to the corprus.txt, and the 2nd argument being the output directory for your trained model
in ec2:
`cd gpt2-xl-training`
`bash train.sh ./corpus/corpus.txt output_run1`
