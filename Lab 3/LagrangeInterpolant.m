function LagrangeInterpolant( X , Y )
  syms x

  Px=0;

  len = length(X);
  for i=1:len
    l= x^0;
    for j=1:len  
      if i!=j
        l = simplify(( l*( x-X(j) )/( X(i)-X(j) ) ));
      endif
    endfor
    Px = Px + l*Y(i);
  endfor
  Px = simplify(Px)
  hold on;
  grid on;
  ezplot(Px)
  plot(X,Y,'ob')
  
  m = double(subs(Px,-7 ))
endfunction