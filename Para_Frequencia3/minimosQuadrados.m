%substituir matrizes x e y com os dados
x=[15,14,12,14,12,11,11,10,12,13];
y=[4.3,4.4,5.3,4.6,5.5,5.9,5.7,6.2,5.2,5.0];

A=[length(x), sum(x); sum(x), sum(x.^2)]
B=[sum(y); sum(y.*x)]


format long

Sol = A\B

a=Sol(1);
b=Sol(2);

xx=min(x):0.01:max(x);
yy=a*xx+b;

erro=sqrt(sum((y-(a*x+b)).^2))



C=[sum(x.^4),sum(x.^3),sum(x.^2),sum(x.^3),sum(x.^2),sum(x);sum(x.^2),sum(x),length(x)]
D=[sum(y.*x.^2);sum(y.*x);sum(y)]

format long
Sol2=C\D

a=Sol2(1);
b=Sol2(2);
c=Sol2(3);

zz=a*xx.^2 + b*xx +c;
plot(xx,zz,'c')
erro=sqrt(sum((y-(a*x.^2+b*x+c)).^2))