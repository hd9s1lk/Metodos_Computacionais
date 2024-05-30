function I = Simpson(a,b,n) %%quanto maior o n, mais aproximado o valor
%testar a paridade do n
if (mod(n,2) ~= 0)
    print("ai ai ai");
    return
end

h = (b-a) /n;
x = a:h:b;
f=func(x);
I=f(1) + f(n+1);

for k=1:(n/2)-1
    I=I+ 2 * f(2*k+1);
end

for k=1:(n/2)
    I=I+4*f(2*k);
end

%E = b-a / n * h^4 * M (M vem da quarta derivada da função)
E = (3-1)/18 * 0.2^4 * 24 %%erro
tol = 0.0123 * 10^-2 %% erro dado
1/n < sqrt(sqrt((tol*180)/24*(b-a)))
n > sqrt(sqrt(24*(b-a)^5 / tol * 180)) %% tem de ser par, para além de arrendondar para cima


I=I * h/3;

end