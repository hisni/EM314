x0 = 0;
y0 = 0;
b = 1.2;

fprintf('Euler Method with step size h=.2\n');
h = .2;
Y1 = ForwardEuler(@f,x0,y0,h,b);
fprintf('\n');

fprintf('Euler Method with step size h=.1\n');
h = .1;
Y2 = ForwardEuler(@f,x0,y0,h,b);
fprintf('\n');

fprintf('Improved Euler Method with step size h=.2\n');
h=.2;
Y3 = ImprovedEuler(@f,x0,y0,h,b);
fprintf('\n');

fprintf('4th order Rungi-Kutta Method with step size h=.2\n');
h=.2;
Y4 = RungeKutta(@f,x0,y0,h,b);
fprintf('\n');

X1 = 0:.2:b;
X2 = 0:.1:b;

hold on;
plot(X1,Y1);
plot(X2,Y2,'r');
plot(X1,Y3,'g');
plot(X1,Y4,'b');