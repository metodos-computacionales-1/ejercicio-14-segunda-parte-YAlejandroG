EulerODE.png Rungekutta.png RungeFriccion.png : EulerODE.py 14Euler.dat Rungekutta.py Rungekutta.dat RungeFriccion.py RungeFriccion.dat 
	python EulerODE.py
	python Rungekutta.py
	python RungeFriccion.py

14Euler.dat Rungekutta.dat RungeFriccion.dat : EulerODE.x Rungekutta.x RungeFriccion.x
	./EulerODE.x 
	./Rungekutta.x 
	./RungeFriccion.x 

EulerODE.x Rungekutta.x RungeFriccion.x : EulerODE.cpp Rungekutta.cpp RungeFriccion.cpp
	c++ EulerODE.cpp -o EulerODE.x
	c++ Rungekutta.cpp -o Rungekutta.x
	c++ RungeFriccion.cpp -o RungeFriccion.x
    
clean : 
	rm EulerODE.x 14Euler.dat EulerODE.png Rungekutta.x Rungekutta.dat Rungekutta.png RungeFriccion.x RungeFriccion.dat RungeFriccion.png