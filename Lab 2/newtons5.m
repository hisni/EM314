function [zero, res, itr] = newtons(f, df, x0, tol, nmax)
itr = 0;
res = abs(x0);

while ( res >= tol && itr <= nmax)
    x = x0 - (f(x0)/df(x0));
    res = abs(x0-x);
    x0 = x;
    itr = itr +1;
end

if itr > nmax
    fprintf('Newtons method stopped without convergence');
end
zero = x;
endfunction