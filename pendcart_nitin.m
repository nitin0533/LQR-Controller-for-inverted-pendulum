function dx = pendcart_abhinandan(x,m,l,u,g,M,b)
dx(1,1) = x(2);
dx(2,1) = (u+m*l*x(4)^2+m*g*sin(x(3))*cos(x(3))-b*x(2))/(M+m-m*cos(x(3))^2);
dx(3,1) = x(4);
dx(4,1) = 1/l*((u+m*l*x(4)^2+m*g*sin(x(3))*cos(x(3))-b*x(2))/(M+m-m*cos(x(3))^2)*(-cos(x(3)))-g*sin(x(3)));
end