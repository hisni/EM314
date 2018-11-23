function y = f(x)
  y = x^2 + 4*x -4;
endfunction

##function y = f(x)
##  
##  p=3.5*(10^7);
##  a=0.401;
##  N=1000;
##  b=42.7*10^(-6);
##  k=1.3806503*(10^(-23));
##  T=300;
##  
##  y = p*(x.^3) + a*(N^2)*x - a*b*(N^3) -(N*b*p+k*N*T)*x.^2;
##
##endfunction

##function y = f(x)
##  M = 3;
##  e = 0.8;
##  y = x - e*sin(x)-M;
##endfunction