#include <iostream>
#include <fstream>
#include <sstream>
#include <iomanip>
#include <vector>
#include <string>
using namespace std;
int change_datacsv(const string &srcFile, vector<string> &lines){
    ifstream f_i;
    ofstream f_o;
    f_i.open(srcFile.c_str());
    int lines_num(0);
    while(!f_i.eof())
    {
        string s,s1;
        stringstream ss;
        getline(f_i,s);//此函数每次读一行,存在S中
        if(!s.empty())
        {
            if(s[0]=='#')
                continue;
            lines_num++;
            ss<<s;
            vector<string> String(2);
            for(int i=0;i<2;i++){
                ss>>String[i];
            }
	        String[1]=String[1].substr(4,-1);
            ss.str("");
            ss.clear();
            ss<<std::fixed<<String[0]<<","<<std::fixed<<String[1];
            //单一参数表示取后续全部
            lines.push_back(ss.str());
            ss.str("");
            ss.clear();
        }
    }
    return lines_num;
}


int main(int argc, char** argv)
{
    vector<string> lines;
    int lines_num= change_datacsv("rgb.txt", lines);
    fstream f_o;
    remove("rgb.txt");
    f_o.open("rgb.csv",ios::out);
    for(int i=0 ;i <lines_num;i++){
        f_o << lines[i]<<endl;
    }
    f_o.close();
    
    return 0;
}
