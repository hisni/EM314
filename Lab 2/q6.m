
 a = 0;
 b = 1;
 tol = 10^(-12);
 nmax = 100;
 [zero, res, niter] = bisection(@f,a,b,tol,nmax)