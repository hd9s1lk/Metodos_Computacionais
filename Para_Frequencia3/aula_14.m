
x=[1,1.5,2.5,3,3.5,4,5.5,6];   %%mudar tabela com x
y=[3.12,2.75,2.14,1.89,1.67,1.47,1.01,0.89]; %%mudar tabela com y
plot(x,y,'o')
hold on 
co = polyfit(x,y,1)
xx = min(x):0.01:max(x);
yy = co(1)*xx+co(2);
plot(xx,yy)

erro1=sqrt(sum((y-(co(1)*x+co(2))).^2))


%------------------------------%
co = polyfit(x,y,2)
xx = min(x):0.01:max(x);
zz = co(1)*xx.^2+co(2)*xx+co(3);
plot(xx,zz)

erro2=sqrt(sum((y-(co(1)*x.^2+co(2)*x+co(3))).^2))




%----------------------------%
Y=log(y);
coef=polyfit(x,Y,1)
a=exp(coef(2));
b=coef(1);
ww=a*exp(b*xx);
plot(xx,ww)