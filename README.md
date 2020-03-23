# lbm-multiphase-cg
# build the code
mpicc Multi_Phase_CG.cpp -lstdc++ -lm -w

# run the executable
mpirun -np 4 a.out INPUT.dat out
