x0 = 4;
tol = 10^(-8);
nmax = 100;

[zero, res, itr] = newtons5(@f,@df,x0,tol,nmax)