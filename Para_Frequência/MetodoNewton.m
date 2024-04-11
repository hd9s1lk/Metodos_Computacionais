function [x,k] = MetodoNewton(x0,tol) 
     % verbose para mostrar texto ou não
    k=0;
    nmax=50;
    if nargin < 3, tol=0.5e-5;  %sendo a tolerância o valor de medida do erro, ou seja, o erro vai até lá
    end
    erro=10000;
    fprintf("Metodo Newton\n");
    fprintf("iter            x                  erro\n");
    fprintf("%3d            %.8f                %.8f\n", k, x0, erro);
    while((erro>tol) && (k<=nmax))
        x= x0 - func(x0)/dfunc(x0);
        erro=abs(x-x0)/abs(x);
        k=k+1;
        fprintf("%3d        %.8f                 %.8f\n",k, x0, erro);
        x0=x;
    end
end