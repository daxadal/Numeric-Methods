
%Hoja 3 Problema 8
%Solución de sistemas tridiagonales por Cholesky

clear all;
n = input('Introduce el tamaño de la matriz: ');
A = zeros(n);
s = sprintf('Introduce la diagonal principal (%d elementos): ', n);
v = input(s);
A = A + diag(v);

s = sprintf('Introduce la diagonal sobre la diag. principal (%d elementos): ', n-1);
v = input(s);
A = A + diag(v,1);
A = A + diag(v,-1);

disp(A)

s=sprintf('introduce un vector segundo miembro de %d coordenadas ', n);
b=input(s);

A=tridChol(A);

%resolucióndel sistema Au=b
resp=1;
while resp==1
    w(1)=b(1);
    for i=2:n
        w(i)=b(i)-A(i,i-1)*w(i-1);
    end
    u(n)=w(n)/A(n,n);
    for i=n-1:-1:1
        u(i)=(w(i)-u(i)*A(i,i+1))/A(i,i);
    end
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