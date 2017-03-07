
%Hoja 3 Problema 6
%Método de Cholesky

clear all;
n = input('Introduce el tamaño de la matriz: ');

A = zeros(n);
s = sprintf('Introduce la diagonal principal (%d elementos): ', n);
v = input(s);
A = A + diag(v);
for i=2:n
    s = sprintf('Introduce la diag. %d posicion/es sobre la diag. principal (%d elementos): ',i-1, n-i+1);
    v = input(s);
    A = A + diag(v,i-1);
    A = A + diag(v,-i+1);
end
disp('La matriz A es : ')
disp(A);
s=sprintf('introduce un vector segundo miembro de %d coordenadas ', n);
b=input(s);

%transforma la matriz en una LU
for k=1:n-1
    for i=k+1:n
        A(i,k)=A(i,k)/A(k,k);
        A(i,k+1:n)=A(i,k+1:n)-A(i,k)*A(k,k+1:n);
    end
end

%Transforma la LU en Cholesky
d = sqrt(diag(A));
A = A-diag(diag(A))+diag(d); %Remplazamos la diagonal por su raiz cuadrada
for i=1:n
    A(i,i+1:n) = A(i,i+1:n)/d(i); %Dividimos las filas de U
    A(i+1:n,i) = A(i+1:n,i)*d(i); %Multiplicamos las columnas de L
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

