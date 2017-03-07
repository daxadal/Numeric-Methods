function u=resolucionLU(A,b)

%Hoja 4 Funcion auxiliar
%Método A=LU

%transforma la matriz en una LU
n=size(A,1);
for k=1:n-1
    for i=k+1:n
        A(i,k)=A(i,k)/A(k,k);
        A(i,k+1:n)=A(i,k+1:n)-A(i,k)*A(k,k+1:n);
    end
end

%resolucióndel sistema Au=b
w=trinfL11(A,b);
u=trsup(A,w);
