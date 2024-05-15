function P = InterPolLagrage(X,Y,x)
%INTERPOLLAGRAGE Summary of this function goes here
%   Detailed explanation goes here
if(length(X) ~= length(Y))
    fprintf("Tamanho de X diferente de Y\n");
    return;
end

if(x > max(X) || x < min(X))
    fprintf("x fora da range de x logo nao é Interpolacao\n")
    return;
end

n = length(X);
P = 0;
l = ones(n , 1);

for i = 1 : n
    for j = 1:n
        if(j ~= i)
            l(i) = l(i) * (x - X(j)) / (X(i) - X(j)); 
        end
    end
    P = P + Y(i) * l(i);

end