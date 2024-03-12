function [sol] = MetBissFor(a,b,n)
%função do método da bisseção
    it=1;
    fprintf("\n Metodo das Bissecoes no intervalo: [%f , %f]", a,b);
    fprintf("i          xi\n");

    for it=1:n
        c =(a+b)/2;
        fprintf("%3d         %.10f\n", it,c);
        if func(a)*func(c)<0
            b=c;
        else
            a=c;
        end
    end
    sol=c;
end

%calcular erro (b-a)/ 2^n