function [y] = erroRelativo(a,b)
    if a~=0
        erroFinal = (a-b)/a
    else
        fprintf("O primeiro valor tem de ser diferente de zero\n");
    end
