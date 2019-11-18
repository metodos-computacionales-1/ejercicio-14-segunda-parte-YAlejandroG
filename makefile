EulerODE.png Rungekutta.png : EulerODE.py 14Euler.dat Rungekutta.py Rungekutta.dat 
	python EulerODE.py
	python Rungekutta.py

14Euler.dat Rungekutta.dat : EulerODE.x Rungekutta.x
	./EulerODE.x 
	./Rungekutta.x 

EulerODE.x Rungekutta.x : EulerODE.cpp Rungekutta.cpp
	c++ EulerODE.cpp -o EulerODE.x
	c++ Rungekutta.cpp -o Rungekutta.x
    
clean : 
	rm EulerODE.x 14Euler.dat EulerODE.png Rungekutta.x Rungekutta.dat Rungekutta.png