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
#from evo_Tum import evo_data

dataset_Path=sys.argv[1]
data_Name=os.listdir(dataset_Path)
data_Name.sort()

folder_Names={}
for i in range(0,len(data_Name)):
    if os.path.isdir(dataset_Path+"/"+data_Name[i]):
        folder_Names[i]=data_Name[i]

data_path={}

#for i in range(1,len(folder_Names)):
#    print(folder_Names[i])
#    data_path[i]=dataset_Path+"/"+folder_Names[i]
#    evo_data(data_path[i],10)

print(folder_Names)

result_Path={}
times = 0
dataset_size=len(folder_Names)
for i in range( 0, dataset_size ):
    result_Path[i]="./Results/"+folder_Names[i+1]
    if not os.path.exists(result_Path[i]):
        os.system("mkdir "+result_Path[i])
    if not ( os.path.exists(result_Path[i]+"/groundtruth.txt") ):
        data_times=open(result_Path[i]+"/times_used.txt","w")
        print(times ,file=data_times)
        data_times.close()

data_Paths={}
for i in range(0, dataset_size ):
    print(folder_Names[i+1]+":")
    data_Paths[i]=dataset_Path+"/"+folder_Names[i+1]
    print(data_Paths[i]+":")
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
