#include <fstream>
#include <iostream>
#include <cmath>
using namespace std;

const double K = 10.0;
const double M = 2.0;
const double DeltaT = 0.01;

int Euler(double t,string nombre);

int main(){
    double t = 10.0;
    string nombre = "14.dat";
    Euler(t,nombre);
    
    return 0;
}

int Euler(double t,string nombre){
    ofstream outfile;
    outfile.open(nombre);
    double v = 1.0;
    double x = 1.0;
    for(double i=0;i<=t;i+=DeltaT){
        v += DeltaT*v;
        x -= DeltaT*(K/M)*x;
        
        outfile << i << "\t" << x << "\t" << v << endl;
    }
    outfile.close();
    
    return 0;
}