function [sol,nit] = jacobi(A,b,tol) %%A é matriz  %%se nao der, trocar as linhas da matriz por causa do rho
    determinante = det(A);  %%faz analiticamente, dá estrilho
    if abs(determinante) <= 1*10^(-1) 
        disp ('O determinante da matriz é aproximadamente 0');
        return
    end
    format long
    D=diag(diag(A));
    U=triu(-A,1);
    L=tril(-A,-1);

    M=D\(L+U);
    N=D\b;
    rho=max(abs(eig(M)));
    if rho >=1
        disp("Parou nininho");
        return
    end

    i=0;
    erro = 200000;
    Xa=zeros(size(A,2),1);
    while erro>=tol
        i = i+1;
        X=M*Xa + N;           
        erro = norm(A*X-b,2);  %%para erro resíduo da função norm(Ax-b,2)
        %%erro = norm(X-Xa,2)/norm(X);%%calcular erro; para erro absoluto dividir por norm(X,2); para infinito é 'inf'
        Xa = X;
    end

    sol=X;
    nit=i;
    disp(nit);