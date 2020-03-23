#!/bin/bash
#----------------------------------------------------
# Example SLURM job script to run mpi applications
# on TACC's Lonestar 5 system.
#
# Example of MPI job submission to normal queue
#----------------------------------------------------
#SBATCH -A CMG-Simulations  
#SBATCH -J mpi_job     				# Job name
#SBATCH -o mpi_job.o%j		 		# Name of stdout output file
#SBATCH -e mpi_job.o%j 				# Name of stderr output file
#SBATCH -p normal	        		# Queue name
#SBATCH -N 2            			# Total number of nodes requested
#SBATCH -n 36 	 	        		# Total number of mpi tasks requested (24cores/node)
#SBATCH -t 48:00:00       			# Run time (hh:mm:ss) - 1.5 hours
#SBATCH --mail-user=sahar.bakhshian@beg.utexas.edu    # Address email notifications
#SBATCH --mail-type=all                         # Email at begin and end of job
                       


# Launch the hybrid application using ibrun
ibrun a INPUT.dat


#Note:  ibrun does not bind tasks or threads by default
#       To bind task/threads to sockets or cores, you should use
#       ibrun with tacc_affinity.
#Note:  If you use this script with other queues please note the 
#       different number of cores per node in each.
