from ctypes import sizeof
from email.policy import default
import pprint
import numpy as np
import os
import time
import sys
##import evo_TumVI

data_Path=sys.argv[1]
sequence_Name=os.listdir(data_Path)
sequence_Name.sort()

folder_Names={}
for i in range(0,len(sequence_Name)):
    if os.path.isdir(data_Path+"/"+sequence_Name[i]):
        folder_Names[i]=sequence_Name[i]

#data_path={}
#for i in range(0,len(folder_Names)):
#    print(folder_Names[i]+":")
#    data_path[i]=dataset_Path+"/"+folder_Names[i]
#    evo_data(data_path[i],10)

os.system("mkdir ./Results")

result_Path={}
times = 0
dataset_size=len(folder_Names)
for i in range( 0, dataset_size ):
    result_Path[i]="./Results/"+folder_Names[i]
    if not os.path.exists(result_Path[i]):
        os.system("mkdir "+result_Path[i])
    if not ( os.path.exists(result_Path[i]+"/groundtruth.txt") ):
        data_times=open(result_Path[i]+"/times_used.txt","w")
        print(times ,file=data_times)
        data_times.close()



data_Paths={}
for i in range(0, dataset_size ):
    print(folder_Names[i]+":")
    data_Paths[i]=data_Path+"/"+folder_Names[i]
    data_times=open( result_Path[i] + "/times_used.txt","r")
    times = int( data_times.readlines()[0] )
    data_times.close()
    while not ( os.path.exists( result_Path[i]+"/KeyFrameTrajectory10.txt" ) ):
        times+=1
        os.system("python3 evo_Realsense.py "+str(data_Paths[i]))
        #evo_Tum.evo_data(data_Paths[i],10)
        print(times)
        time.sleep(5)
        
    data_times=open(result_Path[i]+"/times_used.txt","w")
    print(str(times),file=data_times)
    time.sleep(5)
    data_times.close()
    

#python3 repeat.py ~/dataset/Tum/folders
