#!/bin/sh

rm -f MOM_NA.log MOM_NA.o*

qsub << EOF
#!/bin/tcsh

#PBS -A UMCP0009                             
#PBS -l walltime=02:00:00                   
#PBS -l select=25:ncpus=36:mpiprocs=36:mem=109GB              
##PBS -l select=16:ncpus=32:mpiprocs=32             
#PBS -N MOM_NA               
#PBS -j oe        
#PBS -q regular                             
#PBS -M bherzog@umd.edu              

./na_run.csh > MOM_NA.log

EOF
