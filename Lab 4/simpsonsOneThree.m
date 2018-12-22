function [I,Iexact,RE] = simpsonsOneThree(f, a, b,numSeg);
    
    Step = (b-a)/numSeg;
    X = a:Step:b;
    I = 0;
    
    for i=1:2:length(X)-2
        I = I + f( X(i) ) + 4*f( X(i+1) ) + f( X(i+2));
    end
    
    I = Step*I/3;
    Iexact = integral(f,0,4);
    RE = 100*(Iexact - I)/Iexact;
     
end
