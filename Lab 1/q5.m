%{
N = 10;
k = 1:N;
hk = 1./(2.^k);
x = 3;

dfhk = ( log(x+hk) - log(x) ) ./ hk;

Ehk = abs( (1/x) - dfhk );

fprintf('k\t hk\t\t f\''hk\t\t Ehk\n' )
for i = 1:N
  fprintf('%d\t %f\t %f\t %ld\n',k(i),hk(i),dfhk(i),Ehk(i))
end
hold on;

loglog(hk,Ehk);
co = polyfit( log(hk), log(Ehk), 1 )
xlabel('logarithm scaled hk value');
ylabel('logarithm scaled Ehk value');
%}

N = 40;
k = 1:N;
hk = 1./(2.^k);
x = 3;

dfhk = ( log(x+hk) - log(x) ) ./ hk;

Ehk = abs( (1/x) - dfhk );

fprintf('k\t hk\t\t f\''hk\t\t Ehk\n' )
for i = 1:N
  fprintf('%d\t %f\t %f\t %ld\n',k(i),hk(i),dfhk(i),Ehk(i))
end
hold on;
mm=log(hk)
loglog(hk,Ehk,'b');
xlabel('logarithm scaled hk value');
ylabel('logarithm scaled Ehk value');
