#!/bin/bash
#PBS -q workq
#PBS -A your_allocation
#PBS -l walltime=00:10:00
#PBS -l nodes=3:ppn=20
#PBS -V
#PBS -N sym_test
#PBS -o test.out
#PBS -e test.err

cd $PBS_O_WORKDIR        # go to where your PBS job is submitted if necessary

module load amber

mpirun -np 60 pmemd.MPI -O -i mdin.CPU -o md.out -p prmtop -c inpcrd
