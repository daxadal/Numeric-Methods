
%Hoja 4 Problema 4
%Solución de sistemas por Jacobi por bloques
clear all
A = input('Dame la matriz A: ');
disp(A);
n = size(A,1);
nblq = input('Dame el número de bloques: ');
pun(1) = 1;
for i=1:nblq
    s = sprintf('Dame el tamaño del bloque %d: ', i);
    aux = input(s);
    pun(i+1) = pun(i) + aux;
end
s = sprintf('Dame el vector b de %d coordenadas: ', n);
b = input(s);
b = b';
p = input('Introduce la precisión: ');
imax = input('Introduce el número máximo de iteraciones: ');

u = zeros(n,1);

%Construimos la matriz D
D = zeros(n);
for i=1:nblq
    D(pun(i):pun(i+1)-1,pun(i):pun(i+1)-1) = A(pun(i):pun(i+1)-1,pun(i):pun(i+1)-1);
end

r=b-A*u;
u=resolucionLU(D,D*u+r);
u=u';
i=1;
while norm(r)>=p*norm(b) && i<imax
    r=b-A*u;
    u=resolucionLU(D,D*u+r);
    u=u';
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
title('Método de Jacobi por bloques')
xlabel('Iteraciones')
ylabel('Valor de la norma residuo')
