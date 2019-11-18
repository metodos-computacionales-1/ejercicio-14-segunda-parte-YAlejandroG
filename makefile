EulerODE.png : EulerODE.py 14Euler.dat 
	python EulerODE.py

14Euler.dat : EulerODE.x
	./EulerODE.x 

EulerODE.x : EulerODE.cpp
	c++ EulerODE.cpp -o EulerODE.x
	
clean : 
	rm EulerODE.x 14Euler.dat EulerODE.png 