## Resume Points
**LQR controller to stabilize inverted pendulum pivoted on moving cart**
1. Developed a MATLAB code to design controller with optimal gain matrix derived using LQR to stabilize the pendulum
2. Deployed LQR controller in Simulink to calibrate results and visualized the pendulum motion in MATLAB animation


**LQR controller to stabilize inverted pendulum pivoted on moving cart**
1. Developed a MATLAB code to design controller with optimal gain matrix derived using LQR to stabilize the motion of inverted pendulum


**LQR controller to stabilize inverted pendulum pivoted on moving cart**
1. Developed a MATLAB code to design controller with optimal gain matrix derived using LQR to stabilize the inverted pendulum


**Design of Linear Quadratic Regulator (LQR) using MATLAB**
1. Designed controller with optimal gain matrix using LQR function to stabilize inverted pendulum on a moving cart

3. Deployed LQR controller in Simulink to calibrate results and visualized the pendulum motion in MATLAB animation

## Summary
The objective is to balance the inverted pendulum on moving cart by controlling the force on the cart.
## Problem
![Problem](https://github.com/nitin0533/LQR-Controller-for-inverted-pendulum/blob/main/problem.PNG)

The pendulum is attached to the top of a cart that can move along the x-direction as shown in the figure. The cart is driven by an engine which exerts a horizontal force F . In addition, the cart also experiences a resistance  f  due to its motion.  
An LQR controller needs to be designed for regulating the force exerted, so that the pendulum can be stabilized in the inverted position. The controller should work even if the pendulum is off the vertical initially. (Though of angle with verticle is measured from +y axis, the actual angle used in this problem is measured with -ve y axis. Therefore, we should expect the pendulum to stabilize with angle pi radians with -ve y axis and 0 angular velocity)

## Tasks
1. Studied the dynamics of problem, obtained governing differential equations and determined the rate of change of state  
2. Found out the fixed points and linearized about the desired fixed point  
3. Checked for stability of the fixed point and controllability about the fixed point  
4. Designed a LQR controller based on the results obtained above using suitable cost matrices  
5. Solve for the state from the differential equations and plotted the behaviour of the different state components  
6. Create a graphical simulation of the pendulum-cart system.  
7. Create a block diagram of the linearized system in Simulink and analyze its behaviour.  

## MATLAB codes  
**pendcart_nitin.m**  --  contains the code describing the rate of change of the state of the system  
**sim_pendcart_nitin.m** --  contains the code with the different parameters, initial conditions, matrices, LQR controller, differential equation solver and graph plotter  
**disp_pendcart_nitin.m** --  contains the code for making the graphical simulation of the system  
**pendcartsim_nitin.slx** --  contains the Simulink block diagram of the system  

## **How to run the codes**  
1.  The main code is **sim_pendcart_nitin.m**. It has all required parameter values, fixed points and initial condition.  
2.  Once code is run, the state of system is assumed to be equal to initial state. IT calculates the jacobian matrices and LQR loss function.  
3.  The optimum gain matrix is determined using LQR function in MATLAB and used to determine the feedback force on the cart.  
4.  The parent code calls **pendcart_nitin.m** to determine rate of change of states due to applied force at given state.
5.  This process continues until we achieve vertically balanced pendulum.  
6.  The **disp_pendcart_nitin.m** code is automatically launched to display the animation.  
7.  **pendcartsim_nitin.slx** code contains a simulink block diagram, which has shared workspace with above codes and received the all parameters and LQR gain matrix from that workspace.

## Results
### Plots of angular deviation of pendulum from verticle and angular velocity of pendulum
We expected the pendulum to stabilize with angle pi radians with -ve y axis and 0 angular velocity, that is what we get!!!
![Problem](https://github.com/nitin0533/LQR-Controller-for-inverted-pendulum/blob/main/Plots.png)
### Demo video




https://user-images.githubusercontent.com/71177034/129439373-cedc7126-bf13-4aa2-bbd4-0bb782394ff4.mp4




