%{
for i=2:4
   
    [I,Iexact,RE] = trapezoidal(@f,0,4,i);
    
    fprintf('Segmants = %d, Integral = %f, Exact = %f, Error = %f\n',i,I,Iexact,RE)
    
end

%}

for i=2:2:6
   
    [I,Iexact,RE] = simpsonsOneThree(@f,0,4,i);
    
    fprintf('Segmants = %d, Integral = %f, Exact = %f, Error = %f\n',i,I,Iexact,RE)
    
end