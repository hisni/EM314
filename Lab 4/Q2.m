fprintf('Exact Value = %f\n', integral( @f2,0,1 ));
fprintf('\t\t\tTrapezoidal\t\t\tSimpsons\n')
fprintf('Segments\tEstimate\tPRE(%%)\tEstimate\tPRE(%%)\n');

for i=2:10
	[ TRI, Iexact, TRPRE ] = trapezoidal( @f2, 0, 1, i );
	if ( rem(i,2) == 0 )
    	[ SRI, Iexact, SRPRE ] = simpsonsOneThree(@f2,0,1,i);
    else
        [ SRI, SRPRE ] = compositeSimpsons(@f2,0,1,i);
    end
    fprintf('%4d\t\t%f\t%.2f\t%f\t%.2f\n',i,TRI,TRPRE,SRI,SRPRE);
end
