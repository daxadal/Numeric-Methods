%Practica 3 problema 1 - Método de eliminación gaussiana PA=LU

A=input('introduce la matriz A ');
disp(A)
n=size(A,1);
s=sprintf('introduce un vector segundo miembro de %d coordenadas ', n);
b=input(s);
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
while resp==1
    w(1)=b(pun(1));
    for i=2:n
        w(i)=b(pun(i))-A(pun(i),1:i-1)*w(1:i-1)';
    end
    u(n)=w(n)/A(pun(n),n);
    for i=n-1:-1:1
        u(i)=(w(i)-A(pun(i), i+1:n)*u(i+1:n)')/A(pun(i),i);
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
