
%Hoja 3 Problema 5
%Solución de sistemas banda por LU

clear all;
n = input('Introduce el tamaño de la matriz: ');
p = input('Introduce el semiancho de banda: ');
A = zeros(n);
s = sprintf('Introduce la diagonal principal (%d elementos): ', n);
v = input(s);
A = A + diag(v);
for i=2:p
    s = sprintf('Introduce la diag. %d posicion/es sobre la diag. principal (%d elementos): ',i-1, n-i+1);
    v = input(s);
    A = A + diag(v,i-1);
end
for i=2:p
    s = sprintf('Introduce la diag. %d posicion/es bajo la diag. principal (%d elementos): ',i-1, n-i+1);
    v = input(s);
    A = A + diag(v,-i+1);
end
disp('La matriz A es : ')
disp(A);
s=sprintf('introduce un vector segundo miembro de %d coordenadas ', n);
b=input(s);

%transforma la matriz en una LU
for k=1:n-1
    for i=k+1:n
        m=min(n,k+p-1);
        A(i,k)=A(i,k)/A(k,k);
        A(i,k+1:m)=A(i,k+1:m)-A(i,k)*A(k,k+1:m);
    end
end

%resolucióndel sistema Au=b
resp=1;
while resp==1
    w(1)=b(1);
    for i=2:n
        m=max(1,k-p+1);
        w(i)=b(i)-A(i,m:i-1)*w(m:i-1)';
    end
    u(n)=w(n)/A(n,n);
    for i=n-1:-1:1
        m=min(n,k+p-1);
        u(i)=(w(i)-A(i, i+1:m)*u(i+1:m)')/A(i,i);
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
