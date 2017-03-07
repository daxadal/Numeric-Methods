
%Hoja 2 Problema 4
%Producto de triangular superior por vector
% y producto de trangulares superiores
clear all;
n = input('Dame n: ');
A = zeros(n);
B = zeros(n);
C = zeros(n);
w = zeros(n,1);
for i=1:n
    s = sprintf('Dame la fila %d de A desde el elemento de la diagonal hasta la derecha: ', i);
    A(i,i:n) = input(s);
end;
for i=1:n
    s = sprintf('Dame la fila %d de B desde el elemento de la diagonal hasta la derecha: ', i);
    B(i,i:n) = input(s);
end;
s = sprintf('Dame el vector v de %d elementos: ', n);
v = input(s);
v = v';
for i=1:n
    for j=i:n   %Para cada casilla i,j de C...
        for k=i:j   %... sumamos cada término no nulo A(i,k)*B(k,j)
            C(i,j) = C(i,j) + A(i,k)*B(k,j);
        end
    end
end

for i=1:n
    
    w(i) = A(i,i:n)*v(i:n);
end;
fprintf('El producto Av es: ');
w
fprintf('El producto AB es: ');
C

