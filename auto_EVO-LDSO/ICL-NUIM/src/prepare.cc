#include<iostream>
#include<fstream>
#include<sstream>
#include<vector>
using namespace std;
void change_rgbtxt(const string &srcFile,int num){
    ifstream f_i;
    ofstream f_o;
    f_i.open(srcFile.c_str());
    vector<string> vString;
    int i(0);
    while(!f_i.eof())
    {
        if(i==num){
            break;
        }
        string local_s;
        getline(f_i,local_s);//此函数每次读一行,存在S中
        if(!local_s.empty())
        {
            if(local_s[0]=='#')
                continue;
            else{
                vString.push_back(local_s);
                i++;
            }
        }
    }
    f_i.close();
    f_o.open(srcFile.c_str());

    for(int i=0 ; i<num-1; i++){
        f_o<<vString[i]<<endl;
    }f_o<<vString[num-1]<<endl;
}

void LoadImages(const string &strFile, vector<double> &vTimestamps)
{
    ifstream f;
    f.open(strFile.c_str());
    while(!f.eof())
    {
        string s;
        getline(f,s);//此函数每次读一行
        if(!s.empty())
        {
            if(s[0]=='#')
                continue;
            stringstream ss;
            ss << s;


            double t;
            ss >> t;
            //cout<<std::fixed<<t<<endl;
            vTimestamps.push_back(t);
            continue;
        }
    }

}

void WriteImages(const string &strFile, vector<double> &vTimestamps)
{
    ifstream f_i;
	ofstream f_o;
    f_i.open(strFile.c_str());
	int lines(0);
    vector<string> vsLines;
    stringstream ss;
    while(!f_i.eof())
    {
        vector<string> vString(8);
	    string local_String;
        getline(f_i,local_String);//此函数每次读一行
        if(!local_String.empty())
        {
            if(local_String[0]=='#')
                continue;
            ss << local_String;
			for(int i=0;i<8;i++){
				ss >> vString[i];	
			}
            ss.clear();
            ss.str("");
            ss<<std::fixed<<vTimestamps[lines++]<<" ";
            for(int i=1;i<7;i++){
				ss<<vString[i]<<" ";
			}ss<<vString[7];
			vsLines.push_back(ss.str());
            ss.clear();
            ss.str("");
        }
    }
    f_i.close();
    f_o.open(strFile.c_str());
    for(int i=0;i<lines-1;i++){
        f_o<<vsLines[i]<<endl;
    }f_o<<vsLines[lines-1];
    f_o.close();
}

int main(int argc, char** argv)
{
    int Image_num(0),num(0);
    //cv::Mat img0=cv::imread("../rgb/0.png",cv::IMREAD_UNCHANGED);
    // while(1){
    //     num++;
    //     cv::Mat img=cv::imread("./rgb/"+to_string(num)+".png",cv::IMREAD_UNCHANGED);
    //     if(img.empty()){
    //         num--;
    //         break;
    //     }
    //     //cout<<num<<endl;
    // }
    stringstream ss;
    ss<<argv[1];
    ss>>Image_num;
//    if(img0.empty()) {//从1开始
//        Image_num=num;
//    }else{
//        Image_num=num+1;
//    }

    change_rgbtxt(argv[2],Image_num);//删除TUM中rgb.txt的多余部分
    vector<double> vTimestamps_rgb;
    LoadImages(argv[2],vTimestamps_rgb);//取出rgb.txt时间戳

//    for(auto it: vTimestamps_rgb){
//        cout<<std::fixed<<it<<endl;
//    }

    if( !(string(argv[3])=="KeyFrameTrajectory.txt") ){
        
        vector<string> vsLines;
        string local_String;
        ifstream ifs;
        ofstream ofs;
        int start(0);
        ifs.open(argv[3]);
        
        getline(ifs,local_String);
        ifs.close();
        
        stringstream ss;
        ss<<argv[4];
        ss>>start;
        

        int lines=start+Image_num-1;
        ofs.open("./data.csv");
        for(int i=start;i<lines-1;i++){
             ofs<<to_string(i)+","+to_string(i)+".png"<<endl;
        }ofs<<to_string(lines-1)+","+to_string(lines-1)+".png";
        ofs.close();
    }
    


    WriteImages(argv[3],vTimestamps_rgb);//修改GT时间戳
    return 0;
}
