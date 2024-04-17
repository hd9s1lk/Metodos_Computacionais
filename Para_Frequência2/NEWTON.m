function[X,i] = NEWTON(Xo,tol) %X0 é matriz  
    format long
    erro = 1000;
    i=0;
    while erro>=tol
        X=Xo-JACOBIANO(Xo)\FUNC(Xo)  %%ALTERAR NA FUNC E JACOBIANO(PARCIAL)
        erro=norm(X-Xo,2);
        i=i+1
        Xo=X;
    end
end

    