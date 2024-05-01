function PX = Lagrange(X,Y,x)

if length(X) ~= length(Y)
    disp("dimensões diferentes")
    return
end

if x>max(X) || x<min(X)
    disp("ui ui ui")
    return
end
n=length(X);

PX=0;
l=ones(n,1);
for i=1:n
    for j=1:n
        if i~=j
        l(i)=l(i)*(x-X(j))/(X(i)-X(j));
        end
    end
    PX=PX+l(i)*Y(i);
end
end