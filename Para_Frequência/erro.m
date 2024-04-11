function [y] = erro(a,b)
    erroFinal = abs(a - b)
    fprintf("Erro: %f\n", erroFinal);
