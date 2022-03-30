from ctypes import sizeof
from email.policy import default
from pickle import NONE
import pprint
from unittest import result
import numpy as np
import os

#第一步先通过sys这个模块来添加evo的地址，再import evo
import sys
import time
import subprocess


dataset_Path=sys.argv[1]
data_Names=os.listdir(dataset_Path)
data_Names.sort()
result_Path={}
times = 0
dataset_size=len(data_Names)
for i in range( 0, dataset_size ):
    result_Path[i]="./Results/"+data_Names[i]
    if not os.path.exists(result_Path[i]):
        os.system("mkdir "+result_Path[i])
    if not ( os.path.exists(result_Path[i]+"/groundtruth.txt") ):
        data_times=open(result_Path[i]+"/times_used.txt","w")
        print(times ,file=data_times)
        data_times.close()

data_Paths={}
for i in range(0, dataset_size ):
    print(data_Names[i]+":")
    data_Paths[i]=dataset_Path+"/"+data_Names[i]
    data_times=open( result_Path[i] + "/times_used.txt","r")
    times = int( data_times.readlines()[0] )
    data_times.close()
    while not ( os.path.exists( result_Path[i]+"/KeyFrameTrajectory10.txt" ) ):
        times+=1
        os.system( "python3 evo_Tum.py "+ data_Paths[i] )
        print(times)
        time.sleep(5)
        
    data_times=open(result_Path[i]+"/times_used.txt","w")
    print(str(times),file=data_times)
    time.sleep(5)
    data_times.close()
    

#python3 repeat.py ~/dataset/Tum/folders