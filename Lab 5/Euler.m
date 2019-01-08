function Y = Euler( f, x0, y0, h, b )
	X = x0:h:b;
    Y(1) = y0;
    fprintf( 'Xn\t\t\tYn\n%f\t%f\n', X(1), Y(1) );
    for i=1:length(X)-1
        Y(i+1) = Y(i) + h*f( X(i), Y(i) );
        
        fprintf('%f\t%f\n', X(i+1), Y(i+1) );
    end
end