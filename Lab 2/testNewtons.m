x0 = 100;
tol = 10^(-8);
nmax = 100;

[zero, res, itr] = newtons(@f,@df,x0,tol,nmax)

