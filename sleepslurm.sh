#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=1:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH -J "sleep-job"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o sleepslurm.%N.%j.out # STDOUT
#SBATCH -e sleepslurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
sleep 30

aws sns publish --topic-arn arn:aws:sns:ap-southeast-1:485232176983:awsnotify --message "SleepJobDone"

