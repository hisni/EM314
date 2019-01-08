function Y = RungeKutta(f,x0,y0,h,b)

    X = x0:h:b;
    Y(1) = y0;
    
    fprintf('%f\t%f\n',X(1),Y(1));
    for i=1:length(X)-1
        K0 = h*f( X(i), Y(i) );
        K1 = h*f( X(i)+(h/2), Y(i)+ K0/2 );
        K2 = h*f( X(i)+(h/2), Y(i)+ K1/2 );
        K3 = h*f( X(i)+ h, Y(i)+ K2 );
        
        Y(i+1) = Y(i) + ( K0 + 2*K1 + 2*K2 + K3 )/6;        
        
        fprintf('%f\t%f\n',X(i+1),Y(i+1));
    end

    


end