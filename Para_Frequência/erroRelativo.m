function [y] = erroRelativo(a,b)
    if a~=0
        erroFinal = abs((a-b))/abs(a)
    else
        fprintf("O primeiro valor tem de ser diferente de zero\n")
    end
