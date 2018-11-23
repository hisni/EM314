n=500:500:5000;
for i=500:500:5000
    A = rand(i);
    st = cputime;
    det(A);
    t(i/500)= cputime - st;
end

N = log(n); T = log(t);
hold on;
plot( N, T, 'ro' );
co = polyfit( N, T, 1 )
y = co(1)*N + co(2);
plot( N, y );
xlabel('logarithm scaled Matrix Size');
ylabel('logarithm scaled Computation Time');