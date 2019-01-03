function [I,PRE] = compositeSimpsons(f, a, b,numSeg); 
    Step = (b-a)/numSeg;
    X = a:Step:b;
    IOneThree = 0;
    for i = 1:2:length(X)- 5
        IOneThree = IOneThree + f( X( i ) ) + 4*f( X( i+1 ) ) + f( X( i+2 ));
    end
    IOneThree = Step*IOneThree/3;
    i = length(X)- 3;
    IThreeEight = f( X( i ) ) + 3*f( X( i+1 ) ) + 3*f( X( i+2 ) ) + f( X( i+3 ) );
    IThreeEight = ( 3*Step*IThreeEight ) / 8;
    I = IOneThree + IThreeEight;
    Iexact = integral(f,a,b);
    PRE = 100*(Iexact - I )/Iexact;
    
end