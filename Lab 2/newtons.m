function [zero, res, itr] = newtons(f, df, x0, tol, nmax)
itr = 0;
res = abs(x0);
xor = 2*(sqrt(2)-1);
fprintf("K\t Xk\t\t ek\t\t ek/(ek-1)^2\t\t\n");
ekold = abs(x0-xor);

while ( res >= tol && itr <= nmax)
    x = x0 - (f(x0)/df(x0));
    res = abs(x0-x);
    ek = abs(x0-xor);
    con = ek/(ekold^2);
    fprintf("%d\t %d\t %d\t %d\n",itr,x,ek,con);
    x0 = x;
    itr = itr +1;
    ekold = ek;
end

if itr > nmax
    fprintf('Newtons method stopped without convergence');
end
zero = x;
endfunction