function [sol] = MetBissecao(a,b,Nit)
i=1;
    valora=Ex2Bissecao(a);
    while i <= Nit
    sol=(a+b)/2;
    valorsol=Ex2Bissecao(sol);
    i=i+1;
       if valora*valorsol > 0
          a=sol;
          valora=valorsol;
       else
       b=sol;
       end
end
