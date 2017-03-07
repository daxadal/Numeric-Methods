
%Hoja 4 Problema 2
%Solución de sistemas por relajación
clear all
A = input('Dame la matriz A: ');
disp(A);
n = size(A,1);
s = sprintf('Dame el vector b de %d coordenadas: ', n);
b = input(s);
b = b';
w = input('Dame el parámetro de relajación w: ');
p = input('Introduce la precisión: ');
imax = input('Introduce el número máximo de iteraciones: ');

u = zeros(n,1);

%Cálculo de la matriz de relajación
M=tril(A)-diag(diag(A))*(1-w)/w;
N=-triu(A)+diag(diag(A))*w;

r=b-A*u;
u=trinf(M,N*u+b);
u=u';
i=1;
while norm(r)>=p*norm(b) && i<imax
    r=b-A*u;
    u=trinf(M,N*u+b);
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
title('Método de relajación')
xlabel('Iteraciones')
ylabel('Valor de la norma residuo')
