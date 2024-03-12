function [x,k] = PontoFixo(x0,verbose,tol)
     % verbose para mostrar texto ou não
    k=0;
    nmax=50;
    if nargin < 3, tol=0.5e-5;  %sendo a tolerância o valor de medida do erro, ou seja, o erro vai até lá
    end
    erro=10000;
    if verbose
        fprintf("Metodo Ponto Fixo\n");
        fprintf("iter            x                  erro\n");
        fprintf("%3d            %.8f                %.8f\n", k, x0, erro);
    end
    while((erro>tol) && (k<=nmax))
        x=gx(x0);  %funcao gx a ser utilizada
        erro=abs(x-x0)/abs(x);
        k=k+1;
        if verbose
            fprintf("%3d        %.8f                 %.8f\n",k, x0, erro);
        x0=x;
    end
end