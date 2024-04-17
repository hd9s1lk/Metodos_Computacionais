%%Matriz diagonal é números na diagonal e o resto 0.
%%Matriz quadrada 
%%A * A^-1 = I(Identidade)

%%DEFINIR AS FUNÇÕES

function Y=FUNC(X)
    Y=zeros(2,1);
    Y(1) = X(2) -X(1)^2 +2*X(1) -0.5; %%X1 VARIÁVEL X
    Y(2) = X(1)^2 + 4*X(2)^2 -4; %% X2 VARIÁVEL Y

end