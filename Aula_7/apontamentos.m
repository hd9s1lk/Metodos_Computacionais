%%Integração numérica 

%%dada uma reta, com n pontos, intervalo entre pontos sempre igual
%% h = (b-a)/n (n+1 pontos)

%%Intervalo = Pontos - 1


%%I = (b-1)/2 * (f(a)+f(b)) - (b-a)^3 / 12 * f''(x)
%Regra dos Trapézios Simples
%%Não implementar esta no matlab


%%Regra dos Trapézios Composta
%%|E| = (b-a) * h^2 / 12 * M, onde M=max |f'(x)|



%%--------------------------------------------------------------%%
%Regra de Simpson Simples - grau 2 ou maior
%c= a+b /2
%h=b-a /2
%h/2 * [f(a)+4*f(c)+f(b)]
%Erro = (b-a)/90 * h^4 * f''(x), onde x pertence a [a,b]

%Regra de Simpson Composta (PRECISO DE 3 PONTOS)
%nºde intervalors (par)
%nºde pontos (impar)
%h = b-a / n
%h/3 * 

%% Segunda derivada dita o valor do erro, se é por excesso ou por defeito
%% Se a segunda derivada for negativa, então temos um erro por defeito mod(I) maior que I
%% Se a segunda derivada for positiva, então temos um erro por excesso I maior que mod(I)
%% ver este valor é só ver a derivada da função