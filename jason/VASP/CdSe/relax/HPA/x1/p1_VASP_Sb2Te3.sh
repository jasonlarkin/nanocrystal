#!/bin/tcsh

source /etc/profile.d/modules.csh
module load intel/intel64

cd $PBS_O_WORKDIR

echo pwd

echo This job runs on the following processors:
echo `cat $PBS_NODEFILE`

#run parallel vasp
#mpirun -np `cat $PBS_NODEFILE | wc -l` -machinefile ./machines /home/jason/VASP/src/vasp.5.2/vasp
mpirun -np `cat $PBS_NODEFILE | wc -l` /home/jason/VASP/src/vasp.5.2/vasp

date
echo "finishing"







