function y = InterPolNewton(X,Y,x0)
%INTERPOLNEWTON Summary of this function goes here
%   Detailed explanation goes here
y = 0;


for i = 1:length(X)
Multiplicador = 1;
    for j = 1 : i-1
        Multiplicador = Multiplicador * (x0 - X(j));        
    end

CurrentY = DivDiff(X(1:i), Y(1:i)) * Multiplicador;
y = y + CurrentY;
end