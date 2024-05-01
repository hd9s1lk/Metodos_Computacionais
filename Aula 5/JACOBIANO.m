%%JACOBIANO NAS FUNÇÕES DEFINIDAS NO FUNC

function J=JACOBIANO(X)
    J=zeros(2,2);
    J(1,1)=2*X(1);
    J(1,2)=2*X(2);
    J(2,1)=18*X(1);
    J(2,2)=2*X(2);

end