function [I,Iexact,RE] = trapezoidal(f, a, b, numSeg);
    
    Step = (b-a)/numSeg;
    X = a:Step:b;
    I = 0;
    
    for i=1:length(X)-1
        I = I + f( X(i) ) + f( X(i+1) );
    end
    
    I = I*Step*.5;
    Iexact= integral(f,0,4);
     
    RE = 100*(Iexact - I)/Iexact;
     
end
