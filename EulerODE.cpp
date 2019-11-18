#include <fstream>
#include <iostream>
#include <cmath>
using namespace std;

const double K = 50.0;
const double M = 2.0;
const double DeltaT = 0.01;

int Euler(double t,double v0,double x0,string nombre);

int main(){
    double t = 10.0;
    double v0 = 0.0;
    double x0 = 1.0;
    string nombre = "14Euler.dat";
    
    Euler(t,v0,x0,nombre);
    
    return 0;
}

int Euler(double t,double v0,double x0,string nombre){
    ofstream outfile;
    outfile.open(nombre);
    double xOld,vOld;
    double v = v0;
    double x = x0;
    for(double i=0;i<=t;i+=DeltaT){
        xOld=x;
        vOld=v;
        x += DeltaT*vOld;
        v -= DeltaT*(K/M)*xOld;
        
        outfile << i << "\t" << x << "\t" << v << endl;
    }
    outfile.close();
    
    return 0;
}