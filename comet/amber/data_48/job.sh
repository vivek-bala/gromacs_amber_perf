#!/bin/bash  
#SBATCH --job-name="amber"  
#SBATCH --output="amber.%j.%N.out"  
#SBATCH --partition=compute  
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=24
#SBATCH --export=ALL  
#SBATCH -t 00:10:00  

#export OMP_NUM_THREADS=1

#This job runs with 2 nodes, 24 cores per node for a total of 48 cores.  
#ibrun in verbose mode will give binding detail  

# Env setup
module load amber

#gmx_mpi mdrun
ibrun -np 48 pmemd.MPI -O -i mdin.CPU -o md.out -p prmtop -c inpcrd 
