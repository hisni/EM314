syms x
X = -10:2:0;
Y = [19.1 20.7 28.2 28.7 29 29.1];
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
  
Temp = double(subs(Px,x,-7 ))

p1 = simplify(diff(Px,x));
p2 = simplify(diff(p1,x))

points = real( double(solve(p2==0,x) ) )
