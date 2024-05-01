function[X,erro] = NEWTON_CONTRARIO(Xo,n)
    format long
    erro = 1000;
    i=0;
    tol=0.000000123;
    for i = 0 : n
        X=Xo-JACOBIANO(Xo)\FUNC(Xo)
        erro=norm(FUNC(X),2);
        Xo=X;
    end
    fprintf('---Fim---')
end
    