#!/bin/bash


#----------------------------------------------------
# Generic SLURM script -- MPI Hello World
#
# This script requests 2 nodes and all 16 cores/node
# for a total of 32 MPI tasks.
#----------------------------------------------------
#SBATCH -J myjob          # Job name
#SBATCH -o myjob.%j.out   # stdout; %j expands to jobid
#SBATCH -e myjob.%j.err   # stderr; skip to combine stdout and stderr
#SBATCH -p development    # queue
#SBATCH -N 1              # Number of nodes, not cores (16 cores/node)
#SBATCH -n 16             # Total number of MPI tasks (if omitted, n=N)
#SBATCH -t 00:10:00       # max time


module load intel/13.0.2.146
module load amber         # Load any necessary modules (these are examples)

ibrun -np 16 pmemd.MPI -O -i mdin.CPU -o md.out -p prmtop -c inpcrd
