t0 = 0;
H0 = 0;
b = 1.2;

fprintf('Euler Method with step size h=.2\n');
h = .2;
Y1 = Euler(@f,t0,H0,h,b);
fprintf('\n');

fprintf('Euler Method with step size h=.1\n');
h = .1;
Y2 = Euler(@f,t0,H0,h,b);
fprintf('\n');

fprintf('Improved Euler Method with step size h=.2\n');
h=.2;
Y3 = ImprovedEuler(@f,t0,H0,h,b);
fprintf('\n');

fprintf('4th order Runge-Kutta Method with step size h=.2\n');
h=.2;
Y4 = RungeKutta(@f,t0,H0,h,b);
fprintf('\n');

X1 = 0:.2:b;
X2 = 0:.1:b;

hold on;
plot(X1,Y1,'k');
plot(X2,Y2,'c');
plot(X1,Y3,'g');
plot(X1,Y4,'b');
title('Variation of h(t) with time');
xlabel('Time - t');
ylabel('Height - h(t)');
legend('EulerMethod(h = 0.2)','EulerMethod(h = 0.1)','ImprovedEulerMethod(h = 0.2)','Runge-KuttaMethod(h = 0.2)');