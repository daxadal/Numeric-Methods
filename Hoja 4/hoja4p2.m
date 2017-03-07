
%Hoja 4 Problema 2
%Soluci�n de sistemas por relajaci�n
clear all
A = input('Dame la matriz A: ');
disp(A);
n = size(A,1);
s = sprintf('Dame el vector b de %d coordenadas: ', n);
b = input(s);
b = b';
w = input('Dame el par�metro de relajaci�n w: ');
p = input('Introduce la precisi�n: ');
imax = input('Introduce el n�mero m�ximo de iteraciones: ');

u = zeros(n,1);

%C�lculo de la matriz de relajaci�n
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
    fprintf('Se ha alcanzado el n�mero m�ximo de iteraciones\n');
end

fprintf('La soluci�n obtenida es: ');
disp(u');

format
x=1:i;
plot(x,y)
title('M�todo de relajaci�n')
xlabel('Iteraciones')
ylabel('Valor de la norma residuo')
