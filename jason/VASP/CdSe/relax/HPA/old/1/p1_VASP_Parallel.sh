#!/bin/sh
#PBS -l nodes=1:ppn=4
### Merge stderr with stdout
#PBS -j oe
### Queue name
#PBS -q default
###Job name
#PBS -N VASP_CdSe_HPA_1
### Declare job-non-rerunable
#PBS -r n
#PBS -V
# This job's working directory
echo Job ID: $PBS_JOBID
echo Working directory is $PBS_O_WORKDIR cd $PBS_O_WORKDIR echo Running on host `hostname` echo Time is `date` echo Directory is `pwd` echo This job runs on the following processors:
echo `cat $PBS_NODEFILE`



RUNPATH=/home/jason/VASP/work/CdSe/relax/HPA/1
EXEPATH=/home/jason/VASP/src2/vasp.5.2

cd $RUNPATH

/opt/mpich/p4-gnu/bin/mpirun -np 4 -machinefile $RUNPATH/machines $EXEPATH/vasp_parallel

