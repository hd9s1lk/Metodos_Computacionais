function [I,E] = RT(a,b,n)  %%n é pontos

format short


h=(b-a)/n;
x=a:h:b;
[f,M]=func(x);
I=f(1)+f(n+1);

for i=2:n
    I=I+2*f(i);
end

I=h*I/2;
E=(b-a)*h^2 * M / 12; %erro


%%FAZER [I,E]=RT(valorA,valorB,valorN)
end