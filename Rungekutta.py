import os
import numpy as np
import matplotlib.pyplot as plt

Rungekutta = np.loadtxt('Rungekutta.dat')

plt.figure(figsize=(12,4))

time = Rungekutta[:,0]
x = Rungekutta[:,1]
v = Rungekutta[:,2]

plt.subplot(1,2,1)
plt.plot(time,x,c='g')
plt.grid()
plt.xlabel('time(s)')
plt.ylabel('x(m)')
plt.title("Harmonic oscillator, Position")

plt.subplot(1,2,2)
plt.plot(x,v,c='g')
plt.grid()
plt.xlabel('x(m)')
plt.ylabel('v(m/s)')
plt.title("Harmonic oscillator, Velocity")

plt.savefig("Rungekutta.png")