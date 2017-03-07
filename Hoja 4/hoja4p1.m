
%Hoja 4 Problema 1
%Solución de sistemas por Jacobi por puntos
clear all
A = input('Dame la matriz A: ');
disp(A);
n = size(A,1);
s = sprintf('Dame el vector b de %d coordenadas: ', n);
b = input(s);
b = b';
p = input('Introduce la precisión: ');
imax = input('Introduce el número máximo de iteraciones: ');

u = zeros(n,1);

r=b-A*u;
u=u+r./diag(A);
i=1;
while norm(r)>=p*norm(b) && i<imax
    r=b-A*u;
    u=u+r./diag(A);
    i=i+1;
    y(i) = norm(r)/norm(b);
end

if norm(r)<p*norm(b)
    fprintf('Se ha alcanzado la precision deseada\n');
else
    fprintf('Se ha alcanzado el número máximo de iteraciones\n');
end

fprintf('La solución obtenida es: ');
disp(u');

format
x=1:i;
plot(x,y)
title('Método de Jacobi por puntos')
xlabel('Iteraciones')
ylabel('Valor de la norma residuo')
