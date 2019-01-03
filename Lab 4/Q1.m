%{
for i=2:4
   
    [I,Iexact,RE] = trapezoidal(@f,0,4,i);
    
    fprintf('\nSegments = %d \nEstimateValue = %f \nExactValue = %f \nPRE = %f %%\n',i,I,Iexact,RE);
    
end

for i=2:2:6
    [I,Iexact,RE] = simpsonsOneThree(@f,0,4,i);
    fprintf('\nSegments = %d \nEstimateValue = %f \nExactValue = %f \nPRE = %f %%\n',i,I,Iexact,RE)
end
%}
fprintf('\nSegments\tTrapezoidalRule\tSimpsonsRule\n');
for i=2:15
   [I,Iexact,TRPRE] = trapezoidal(@f,0,4,i);
   if ( rem(i,2) == 0 )
        [I,Iexact,SRPRE] = simpsonsOneThree(@f,0,4,i);
   else
       SRPRE = compositeSimpsons(@f,0,4,i);
   end
   fprintf('\t%d\t\t%.2f\t\t\t%.2f\n',i,TRPRE,SRPRE);
end
