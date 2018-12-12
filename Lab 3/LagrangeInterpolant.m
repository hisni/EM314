function LagrangeInterpolant( X , Y )
syms x

%[0 1/2 1],[0 1/4 1]

%X=[0 1/2 1];
%Y=[0 1/4 1];

len = length(X);
for i=1:len
  l(i)= x^0;
  for j=1:len  
    
    if i!=j
      l(i)= horner( l(i)*( x-X(j) )/( X(i)-X(j) ) );
    endif
    
  endfor
endfor
l
endfunction