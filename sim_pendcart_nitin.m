m=1;b=1;M=5;l=7;g=10;
tspan= 0:0.01:20;

x0=[0;0;pi+0.5;0];  %initial condition
xf=[0;0;pi;0]; %fixed point

%Jacobian
A = [0,1,0,0;0,-b/M,m*g/M,0;0,0,0,1;0,-b/M/l,g*(m+M)/M/l,0];
B = [0;1/M;0;1/M/l];

%LQR loss function
Q = eye(4);
R = 1;
K=lqr(A,B,Q,R);

% solving diff equation
[t,x] = ode45(@(t,x)pendcart_abhinandan(x,m,l,-K*(x-xf),g,M,b),tspan,x0);

tiledlayout(1,2)
nexttile

plot(t,x(:,3),'r')
hold on
plot(t, repmat(xf(3), length(t),1),'b')
title('Angle')
xlabel('t')
ylabel('theta')

nexttile
plot(t,x(:,4),'r')
hold on
plot(t, repmat(xf(4), length(t),1),'b')
title('Angular speed')
xlabel('t')
ylabel('thetadot')

disp_pendcart_abhinandan(t,x,l)
