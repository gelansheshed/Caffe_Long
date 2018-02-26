#########################################################################
# File Name: run_alexnet.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: 2017年05月31日 星期三 19时38分41秒
#########################################################################
#!/bin/bash
export LD_LIBRARY_PATH=/opt/OpenBLAS/lib/:$LD_LIBRARY_PATH

SOLVER=./mnist_solver.prototxt
../../build/tools/caffe train -solver $SOLVER -gpu 0 2>&1 | tee log.txt 
