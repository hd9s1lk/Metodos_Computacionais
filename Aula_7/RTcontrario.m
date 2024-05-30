function I=RTcontrario(a,b,n) %%regra do trapézio quando é dado o erro
% a - limite inferior do intervalo
% b - limite superior do intervalo
% n - numero de intervalos
% I - valor do Integral


format long% utiliza¸c~ao de 15 digitos
h=(b-a)/n;% determinacao do espacamento
I=0;% inicializacao do valor do integral
for k=1:n-1 % soma dos valores da funcao com coeficiente 2
    I=I+2*func(a+k*h);
end


I=I+func(a)+func(b);% soma dos valores de coeficiente 1
I=I*h/2% calculo final
end