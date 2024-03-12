function [sol,n] = MetBisErro(a,b,tol)
    it=1;
    erro=1000;
    fprintf("\n Metodo da Bissecao no intervalo: [%f, %f]", a,b);
    fprintf("i                     xi                erro\n");
    while erro>= tol && it <= 50
        c=(a+b)/2;
        erro=(b-a)/2;
        fprintf("%3d             %.10f            %.10f  \n", it, c, erro);
        if func(a)*func(c)<0
            b=c;
        else
            a=c;
        end
        sol=c;
        n=it;
    end
    