function[X,erro] = NEWTON_CONTRARIO(Xo,i)
    format long
    erro = 1000;
    i=0;
    tol=0.000000123;
    while erro>=tol
        X=Xo-JACOBIANO(Xo)\FUNC(Xo)
        erro=norm(FUNC(X),2);
        i=i+1
        Xo=X;
    end
end

    