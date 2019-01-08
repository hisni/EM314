function Y = ImprovedEuler(f,x0,y0,h,b)
    max = 100;
    X = x0:h:b;
    Y(1) = y0;
    fprintf('%f\t%f\n',X(1),Y(1));
    
    for i=1:length(X)-1
        
        Ydiff = f( X(i), Y(i) );
        Ystar = Y(i) + h*Ydiff;
        Ystardiff = f( X(i+1), Ystar );
        Ydiffavg = (Ystardiff + Ydiff)*.5;
        Yimp = Y(i) +  h*Ydiffavg;
        
        j=1;
        while( Yimp ~= Ystar && j<max )
            Ystar = Yimp;
            Ystardiff = f( X(i+1), Ystar );
            Ydiffavg = (Ystardiff + Ydiff)*.5;
            Yimp = Y(i) +  h*Ydiffavg;
            j = j+1;
        end
        Y(i+1) = Yimp;
        
        fprintf('%f\t%f\n',X(i+1),Y(i+1));
    end
end