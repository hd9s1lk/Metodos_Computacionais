function y = DIFERENCA_DIVIDIDA(X,Y) %% vetores x e y, defini-los no cmd
    X=[-2,-1,0,1,3,7,8];
    Y=[10,4,-1,2,5,20,2,25];
    n = length(X);
    Tab = zeros(n,n);
    Tab(:,1)=Y;
    for i = 1:n-1 
        %for j=2
        Tab(i,2) = (Tab(i+1,1) - Tab(i,1)) / (X(i,1) - X(i));
        %end
    end

