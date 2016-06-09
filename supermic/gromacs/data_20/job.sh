#!/bin/bash
#PBS -q workq
#PBS -A your_allocation
#PBS -l walltime=00:10:00
#PBS -l nodes=1:ppn=20
#PBS -V
#PBS -N sym_test
#PBS -o test.out
#PBS -e test.err

cd $PBS_O_WORKDIR        # go to where your PBS job is submitted if necessary

module load gromacs

gmx_d grompp -n index.ndx -f run.mdp -c start.gro -maxwarn 1
mpirun -np 20 mdrun_mpi_d
#mdrun_mpi_d
