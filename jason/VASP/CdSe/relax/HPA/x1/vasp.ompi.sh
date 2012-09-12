#!/bin/bash

#PBS -j oe
#PBS -l nodes=1:ppn=32
#PBS -l walltime=48:00:00
#PBS -l mem=8192mb

source /etc/profile.d/modules.sh

cd $PBS_O_WORKDIR

module load openmpi-psm-gcc
source /opt/intel/Compiler/11.1/072/bin/intel64/iccvars_intel64.sh

export PSM_SHAREDCONTEXTS_MAX=4
export IPATH_NO_CPUAFFINITY=1

mpirun -np `cat $PBS_NODEFILE | wc -l ` -mca btl openib,sm,self -mca mtl ^psm /opt/mcgaugheygroup/vasp.5.2.ifort.OpenMPI

