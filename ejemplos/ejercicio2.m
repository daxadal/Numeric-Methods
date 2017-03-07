%Practica 3 problema 2 - Inversa de una matriz por el método de Gauss

A=input('introduce la matriz A ');
disp(A)
n=size(A,1);
b=eye(n);
pun=1:n; %vector que vamos a utilizar como puntero
for k=1:n-1
    [m j]=max(abs(A(pun(k:n), k))); %el valor del pivote valor maximo y su posicion
    j=j+k-1;
    aux=pun(k);
    pun(k)=pun(j);
    pun(j)=aux;
    for i=k+1:n
        A(pun(i),k)=A(pun(i),k)/A(pun(k),k);
        A(pun(i),k+1:n)=A(pun(i),k+1:n)-A(pun(i),k)*A(pun(k),k+1:n);
    end
end
%transforma la matriz en una LU
resp=1;
for j=1:n
    w(1, j)=b(pun(1), j);
    for i=2:n
        w(i, j)=b(pun(i), j)-A(pun(i),1:i-1)*w(1:i-1, j);
    end
    u(n, j)=w(n, j)/A(pun(n),n);
    for i=n-1:-1:1
        u(i,j)=(w(i,j)-A(pun(i), i+1:n)*u(i+1:n,j))/A(pun(i),i);
    end
end

 disp('la solucion Ainv es : ')
 disp(u)
 disp('la solucion usando el comando inv de matlab es : ')
 invA=inv(A);
 disp(invA)
 disp('Ainv - inv(A) : ')
 disp(invA-u)
 
 