#!/bin/bash  
#SBATCH --job-name="gromacs"  
#SBATCH --output="gromacs.%j.%N.out"  
#SBATCH --partition=compute  
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=24  
#SBATCH --export=ALL  
#SBATCH -t 00:10:00  

export OMP_NUM_THREADS=1

#This job runs with 2 nodes, 24 cores per node for a total of 48 cores.  
#ibrun in verbose mode will give binding detail  

# Env setup
module unload mvapich2_ib
module unload intel
module load gromacs

gmx_mpi grompp -n index.ndx -f run.mdp -c start.gro -maxwarn 1
ibrun -np 48 gmx_mpi mdrun
