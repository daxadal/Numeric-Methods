
%Hoja 3 Problema 4
%Método A=LU

A=input('introduce la matriz A ');
disp(A)
n=size(A,1);
s=sprintf('introduce un vector segundo miembro de %d coordenadas ', n);
b=input(s);

%transforma la matriz en una LU
for k=1:n-1
    for i=k+1:n
        A(i,k)=A(i,k)/A(k,k);
        A(i,k+1:n)=A(i,k+1:n)-A(i,k)*A(k,k+1:n);
    end
end

%resolucióndel sistema Au=b
resp=1;
while resp==1
    w=trinfL11(A,b);
    u=trsup(A,w);
    disp('la solucion es : ')
    disp(u)
    disp('?Quieres resolver otro sistema con esta misma matriz?')
    disp('En caso afirmativo teclea 1 ')
    resp=input('En caso negativo teclea 0 ');
    if resp==1
        s=sprintf('Dame un vector segundo miembro  de %d coordenadas ',n);
        b=input(s);
    end
end
